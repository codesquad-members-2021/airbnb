//
//  NearbyPopularDestinationModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/21.
//

import Foundation

class NearbyPopularDestination: NearbyDestination {
    private var x: Double
    private var y: Double
    
    init(cityImage: String, cityName: String, distance: String, x: Double, y: Double) {
        self.x = x
        self.y = y
        super.init(cityImage: cityImage, cityName: cityName, distance: distance)
    }
}
