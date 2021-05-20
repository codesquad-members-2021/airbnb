//
//  NearbyDestinationModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import Foundation

class NearbyDestinationModel {
    private(set) var cityImage: String
    private(set) var cityName: String
    private(set) var distance: String
    
    init(cityImage: String, cityName: String, distance: String) {
        self.cityImage = cityImage
        self.cityName = cityName
        self.distance = distance
    }
}
