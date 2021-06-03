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
    var images: Images
    var price: Int
    var people: Int?
    var title: String
    var description: String
    var host: Host
    var detail: Detail
    var grade: Int
    var review: Int?
    var tax: Tax
    
    struct Images: Codable, Hashable {
        var mainImage: String
        var detailImage: [String]
    }
    
    struct Host: Codable, Hashable {
        var image: String?
        var name: String?
    }
    
    struct Detail: Codable, Hashable {
        var maxPeople: Int
        var oneRoom: Bool
        var bed: Int?
        var bath: Int?
        var hairDryer: Bool
        var airConditioner: Bool
        var WiFi: Bool?
        var kitchen: Bool
    }
    
    struct Tax: Codable, Hashable {
        var cleanTax: Int
        var serviceTax: Int
        var accommodationTax: Int
    }
}


