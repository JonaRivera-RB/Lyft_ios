//
//  Location.swift
//  Lyft
//
//  Created by Misael Rivera on 19/08/20.
//  Copyright © 2020 Misael Rivera. All rights reserved.
//

import Foundation

class Location: Codable {
    var title: String
    var subtitle: String
    let lat: Double
    var lng: Double
    
    init(title: String, subtitle: String, lat: Double, lng: Double) {
        self.title = title
        self.subtitle = subtitle
        self.lat = lat
        self.lng = lng
    }
}
