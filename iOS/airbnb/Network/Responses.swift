//
//  Responses.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import Foundation

struct Coordinate : Decodable {
    let x : Double
    let y : Double
}

struct NearPlace : Decodable {
    let name: String
    let avatarUrl: URL?
    let distance: Int
    let coordinate : Coordinate
}
