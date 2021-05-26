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
    
//    func toDomainTripPlace() -> [TripPlace] {
//        let tripPlaces = self.locations.map { tripPlace in
//            TripPlace(id: tripPlace.id, name: tripPlace.name, imageUrl: tripPlace.imageUrl)
//        }
//        return tripPlaces
//    }
//
//    func toDomainCategories() -> [RecommendTrip] {
//        let recommendTrips = self.categories.map { recommendTrip in
//            RecommendTrip(id: recommendTrip.id, name: recommendTrip.name, imageUrl: recommendTrip.imageUrl)
//        }
//        return recommendTrips
//    }
    
    func update() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "name"), object: self)
    }

    mutating func update(locations: inout [TripPlace]) {
        self.locations = locations
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "name"), object: self)
    }
    
    mutating func update(categories: inout [RecommendTrip]) {
        self.categories = categories
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "name"), object: self)
    }
}
