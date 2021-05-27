//
//  RoomData.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/24.
//

import Foundation

struct RoomEntity: Decodable {
    
    private(set) var propertyId: Int
    private(set) var images: String
    private(set) var title: String
    private(set) var bookmark: Bool
    private(set) var pricePerNight: Int
    private(set) var totalPrice: Int
    private(set) var reviewCount: Int
    private(set) var rating: Double
    
}
