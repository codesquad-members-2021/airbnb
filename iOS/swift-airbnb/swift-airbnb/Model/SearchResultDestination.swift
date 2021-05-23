//
//  SearchResultDestination.swift
//  swift-airbnb
//
//  Created by user on 2021/05/23.
//

import Foundation

class SearchResultDestination {
    private(set) var addressName: String
    private(set) var placeName: String
    private(set) var x: Double
    private(set) var y: Double
    
    init(addressName: String, placeName: String, x: Double, y: Double) {
        self.addressName = addressName
        self.placeName = placeName
        self.x = x
        self.y = y
    }
}

extension SearchResultDestination: Equatable, Hashable {
    static func == (lhs: SearchResultDestination, rhs: SearchResultDestination) -> Bool {
        return lhs.addressName == rhs.addressName && lhs.placeName == rhs.placeName &&
            lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(addressName)
        hasher.combine(placeName)
        hasher.combine(x)
        hasher.combine(y)
    }
}
