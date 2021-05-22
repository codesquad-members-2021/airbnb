//
//  NearbyDestinationModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import Foundation

class NearbyDestination {
    private(set) var cityImage: String
    private(set) var cityName: String
    private(set) var distance: String
    
    init(cityImage: String, cityName: String, distance: String) {
        self.cityImage = cityImage
        self.cityName = cityName
        self.distance = distance
    }
}

extension NearbyDestination: Equatable, Hashable {
    static func == (lhs: NearbyDestination, rhs: NearbyDestination) -> Bool {
        return lhs.cityImage == rhs.cityName && lhs.cityName == rhs.cityName && lhs.distance == rhs.distance
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(cityImage)
        hasher.combine(cityName)
        hasher.combine(distance)
    }
}
