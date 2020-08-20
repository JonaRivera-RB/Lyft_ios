//
//  LocationService.swift
//  Lyft
//
// /Users/misael/Desktop/locations.json Created by Misael Rivera on 19/08/20.
//  Copyright © 2020 Misael Rivera. All rights reserved.
//

import Foundation

class LocationService {
    static let shared = LocationService()
    
    private var recentLocations = [Location]()
    
    private init(){
        let locationsUrl = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        let data = try! Data(contentsOf: locationsUrl)
        let decoder = JSONDecoder()
        recentLocations = try! decoder.decode([Location].self, from: data)
    }
    
    func getRecentLocations() -> [Location] {
        return recentLocations
    }
    
}
