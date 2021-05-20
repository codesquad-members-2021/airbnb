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
}
