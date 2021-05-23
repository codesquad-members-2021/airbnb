//
//  Model.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

struct SearchLoaction: Decodable {
    let cityInfoList: [CityInfoList]
    
    enum CodingKeys: String, CodingKey {
        case cityInfoList = "city_info_list"
    }
}

struct CityInfoList: Decodable {
    let provinceId, townId, addressId: Int
    let address: String
    
    enum CodingKeys: String, CodingKey {
        case provinceId = "province_id"
        case townId = "town_id"
        case addressId = "address_id"
        case address
    }
}
