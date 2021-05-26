//
//  TripPlace.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/18.
//

import Foundation

struct TripPlace: Decodable {
    private (set) var imageURL: String
    private (set) var region: String
    private (set) var distance: String
}
