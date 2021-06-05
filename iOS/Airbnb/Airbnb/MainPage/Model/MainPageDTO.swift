//
//  MainPageDTO.swift
//  Airbnb
//
//  Created by Lia on 2021/05/20.
//

import Foundation

struct Main: Codable {
    let mainPage: MainPage
}

struct MainPage: Codable, Hashable {
    let heroImage: String
    let cities: [City]
    let categories: [Category]
}

struct Category: Codable, Hashable {
    let category: String
    let image: String
}

struct City: Codable, Hashable {
    let id: Int
    let name: String
    let image: String
    var distance: Int
}



