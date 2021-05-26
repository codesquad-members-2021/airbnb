//
//  Model.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

struct SearchLoaction: Decodable {
    let cityInfoList: [CityInfoList]
}

struct CityInfoList: Decodable {
    let provinceId, townId, addressId: Int
    let address: String
}
