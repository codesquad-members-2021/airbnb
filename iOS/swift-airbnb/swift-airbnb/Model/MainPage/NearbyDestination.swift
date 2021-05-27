//
//  NearbyDestinationModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import Foundation

//MARK: NearbyDestinationCell을 사용하기 위한 프로토콜
protocol NearbyDestinationInterface {
    var cityImage: String { get }
    var cityName: String { get }
    var distance: String { get }
}

struct NearbyDestination: NearbyDestinationInterface {
    let cityImage: String
    let cityName: String
    let distance: String
    
    init(cityImage: String, cityName: String, distance: String) {
        self.cityImage = cityImage
        self.cityName = cityName
        self.distance = distance
    }
}

extension NearbyDestination: Equatable, Hashable {
    static func == (lhs: NearbyDestination, rhs: NearbyDestination) -> Bool {
        return lhs.cityImage == rhs.cityImage && lhs.cityName == rhs.cityName && lhs.distance == rhs.distance
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(cityImage)
        hasher.combine(cityName)
        hasher.combine(distance)
    }
}
