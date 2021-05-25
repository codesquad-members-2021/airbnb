//
//  FirstPageDTO.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/18.
//

import Foundation

struct MainPageDTO: Decodable {
    private (set) var wishList: WishList
    private (set) var tripPlaceList: [TripPlace]
    private (set) var recommendTripList: [RecommendTrip]
}
