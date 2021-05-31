//
//  FirstPageDTO.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/18.
//

import Foundation

struct MainPageDTO: Decodable {
    private (set) var locations: [TripPlace]
    private (set) var categories: [RecommendTrip]
    
    func update() {
        NotificationCenter.default.post(name: Notification.tripPlaceDataUpdate, object: self)
        NotificationCenter.default.post(name: Notification.recommendTripDataUpdate, object: self)
    }

//    mutating func update(locations: inout [TripPlace]) {
//        self.locations = locations
//        NotificationCenter.default.post(name: Notification.tripPlaceDataUpdate, object: self)
//    }
//
//    mutating func update(categories: inout [RecommendTrip]) {
//        self.categories = categories
//        NotificationCenter.default.post(name: Notification.recommendTripDataUpdate, object: self)
//    }
}
