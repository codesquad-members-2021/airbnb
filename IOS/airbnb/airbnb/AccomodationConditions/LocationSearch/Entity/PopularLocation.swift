//
//  PopularLocation.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

struct PopularLocation: Decodable {
    let name: String
    let distanceFromHere: String
    let imagePath: String
    
    init() {
        self.name = "집"
        self.distanceFromHere = "걸어서 0분 거리"
        self.imagePath = ""
    }
}
