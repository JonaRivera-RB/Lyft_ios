//
//  RideQuoteService.swift
//  Lyft
//
//  Created by Misael Rivera on 19/08/20.
//  Copyright © 2020 Misael Rivera. All rights reserved.
//

import Foundation
import CoreLocation

class RideQuoteService {
    static let shared = RideQuoteService()
    
    private init() {}
    
    func getQuotes(pickupLocation: Location, dropLocation: Location) -> [RideQuote] {
        
        let location1 = CLLocation(latitude: pickupLocation.lat, longitude: pickupLocation.lng)
        let location2 = CLLocation(latitude: dropLocation.lat, longitude: dropLocation.lng)
        
        //Meters
        let distance = location1.distance(from: location2)
        let minimumAmount = 3.0
        return [
            RideQuote(thumbnail: "ride-shared", name: "Shared", capacity: "1-2", price: minimumAmount + (distance * 0.5), time: Date()),
            RideQuote(thumbnail: "ride-compact", name: "Shared", capacity: "4", price: minimumAmount + (distance * 0.9), time: Date()),
            RideQuote(thumbnail: "ride-large", name: "Shared", capacity: "6", price: minimumAmount + (distance * 1.5), time: Date())
        ]
    }
}
