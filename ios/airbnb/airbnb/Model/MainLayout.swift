//
//  Cities.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/20.
//

import Foundation

struct MainLayout: Decodable {
    let mainImage: String
    let cities: [City]
}

struct City: Decodable {
    let id: Int
    let cityName: String
    let cityImage: String
}
