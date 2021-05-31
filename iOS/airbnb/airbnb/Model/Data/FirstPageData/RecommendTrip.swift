//
//  RecommendTrip.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/18.
//

import Foundation

struct RecommendTrip: Decodable {
    private (set) var id: Int
    private (set) var name: String
    private (set) var imageUrl: String
}
