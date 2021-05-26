//
//  RoomData.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/24.
//

import Foundation

final class RoomData: Decodable {
    private(set) var roomId: Int
    private(set) var imageURL: String
    private(set) var title: String
    private(set) var bookmark: Bool
    private(set) var pricePerNight: Int
    private(set) var totalPrice: Int
    private(set) var reviewCount: Int
    private(set) var rating: Int
    
    init() {
        self.roomId = 0
        self.imageURL = ""
        self.title = ""
        self.bookmark = false
        self.pricePerNight = 0
        self.totalPrice = 0
        self.reviewCount = 0
        self.rating = 0
    }
    
    enum CodingKeys: String, CodingKey {
        case roomId
        case imageURL = "image_url"
        case title
        case bookmark
        case pricePerNight = "price_per_night"
        case totalPrice = "total_price"
        case reviewCount = "review_count"
        case rating
    }
}
