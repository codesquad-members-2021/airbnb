//
//  Responses.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import Foundation

struct NearPlaceResponse : Decodable {
    let name: String
    let avatarUrl: String
    let distance: Int
    let x: Double
    let y: Double
    
    func toNearPlace() -> NearPlace {
        return NearPlace(name: self.name,
                         avatarUrl: URL(string: self.avatarUrl),
                         distance: self.distance,
                         x: self.x,
                         y: self.y)
    }
}

struct PriceResponse : Decodable {
    let prices: [Double]
}

