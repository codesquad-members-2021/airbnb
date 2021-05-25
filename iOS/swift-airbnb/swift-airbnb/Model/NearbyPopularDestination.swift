//
//  NearbyPopularDestinationModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/21.
//

import Foundation

struct NearbyPopularDestination: NearbyDestinationInterface {
    let cityImage: String
    let cityName: String
    let distance: String
    let x: Double
    let y: Double
    
    init(cityImage: String, cityName: String, distance: String, x: Double, y: Double) {
        self.cityImage = cityImage
        self.cityName = cityName
        self.distance = distance
        self.x = x
        self.y = y
    }
}

extension NearbyPopularDestination: Equatable, Hashable {
    static func == (lhs: NearbyPopularDestination, rhs: NearbyPopularDestination) -> Bool {
        return lhs.cityImage == rhs.cityName && lhs.cityName == rhs.cityName && lhs.distance == rhs.distance && lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(cityImage)
        hasher.combine(cityName)
        hasher.combine(distance)
        hasher.combine(x)
        hasher.combine(y)
    }
}
