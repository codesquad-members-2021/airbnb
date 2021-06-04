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
        
        var description: String {
            var result = "최대 인원 \(maxPeople)명"
            let oneRoom = oneRoom ? " ∙ 원룸" : ""
            let count = "∙ 침대 \(bedCount)개 ∙ 욕실 \(bathCount)개"
            let hairDryer = hairDryer ? " ∙ 헤어드라이어" : ""
            let airConditioner = airConditioner ? " ∙ 에어컨" : ""
            let wifi = wiFi ? " ∙ 와이파이" : ""
            let kitchen = kitchen ? " ∙ 부엌" : ""
            result = result + oneRoom + count + hairDryer + airConditioner + wifi + kitchen
            return result
        }
    }
    
    struct Tax: Codable, Hashable {
        var cleanTax: Int
        var serviceTax: Int
        var accommodationTax: Int
    }
}


