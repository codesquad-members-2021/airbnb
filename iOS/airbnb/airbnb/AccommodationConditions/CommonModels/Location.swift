//
//  LocationSearchResult.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

struct Location: Decodable {
    let name: String
    let coordinate: Coordinate
}

struct Coordinate: Decodable {
    let latitude: Double
    let longitude: Double
}
