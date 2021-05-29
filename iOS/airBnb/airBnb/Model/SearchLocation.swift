//
//  Model.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

struct SearchLoaction: Decodable {
    let locationList: [LocationList]
}

struct LocationList: Decodable {
    let id: Int
    let address: String
}
