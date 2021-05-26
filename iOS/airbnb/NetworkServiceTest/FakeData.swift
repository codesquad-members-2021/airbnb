//
//  FakeData.swift
//  NetworkServiceTest
//
//  Created by Song on 2021/05/25.
//

import Foundation

struct FakeData {
    static let PopularLocations = [
        PopularLocation(name: "달", distanceFromHere: "우주선으로 100시간", imagePath: ""),
        PopularLocation(name: "안드로메다", distanceFromHere: "우주선으로 1천 시간", imagePath: ""),
        PopularLocation(name: "하와이", distanceFromHere: "걸어서 2만 시간", imagePath: ""),
        PopularLocation(name: "코드스쿼드", distanceFromHere: "걸어서 6시간", imagePath: "")
        ]
}

extension PopularLocation: Equatable {
    public static func == (lhs: PopularLocation, rhs: PopularLocation) -> Bool {
        return lhs.name == rhs.name && lhs.distanceFromHere == rhs.distanceFromHere
    }
}
