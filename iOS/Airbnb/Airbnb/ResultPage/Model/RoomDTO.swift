//
//  RoomDTO.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import Foundation

struct Rooms: Codable, Hashable {
    var rooms : [Room]
}

struct Room: Codable, Hashable {
    let uuid = UUID()
    
    var roomId: Int
    var price: Int
    var title: String
    var description: String
    var images: Images
    var grade: Int
    var reviewCount: Int
    var tax: Tax
    var location: Location
    var host: Host
    var detail: Detail
    
    struct Images: Codable, Hashable {
        var mainImage: String
        var detailImage: [String]
    }
    
    struct Location: Codable, Hashable {
        var latitude: Double
        var longitude: Double
    }
    
    struct Host: Codable, Hashable {
        var profileImageUrl: String
        var id: String
    }
    
    struct Detail: Codable, Hashable {
        var maxPeople: Int
        var oneRoom: Bool
        var bedCount: Int
        var bathCount: Int
        var hairDryer: Bool
        var airConditioner: Bool
        var wiFi: Bool
        var kitchen: Bool
    }
    
    struct Tax: Codable, Hashable {
        var cleanTax: Int
        var serviceTax: Int
        var accommodationTax: Int
    }
}


