//
//  RoomsList.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/25.
//

import Foundation

struct RoomsList: Decodable {
    let list: [RoomInformation]
}

struct RoomInformation: Decodable {
    let receipt: Receipt
    let room: Room
    let thumbImage: String
}

struct Receipt: Decodable {
    let basicPrice: Int
    let cleaningFee: Int
    let resultFee: Int
    let serviceFee: Int
    let totalPrice: Int
    let weekSalePrice: Int
}

struct Room: Decodable {
    let bathRoom: Int
    let bed: Int
    let description: String
    let id: Int
    let location: Location
    let maxGuest: Int
    let pricePerDay: Int
    let roomType: String
    let title: String
}

struct Location: Decodable {
    let latitude: Int
    let longtitude: Int
}
