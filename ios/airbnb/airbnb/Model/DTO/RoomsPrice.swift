//
//  RoomsPrice.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/25.
//

import Foundation

struct RoomsPrice: Decodable {
    let allPrices: [Int]
    let averagePrice: Int
}
