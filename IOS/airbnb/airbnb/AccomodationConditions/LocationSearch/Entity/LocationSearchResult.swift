//
//  LocationSearchResult.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

struct LocationSearchResult: Decodable {
    let name: String
    let coordinate: Coordinate
    
    init() {
        self.name = "집"
        self.coordinate = Coordinate()
    }
}

struct Coordinate: Decodable {
    let latitude: Double
    let longitude: Double
    
    init() {
        self.latitude = 0.0
        self.longitude = 0.0
    }
}
