//
//  NearPlace.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import Foundation
import Combine

struct Location {
    let x: Double
    let y: Double
}
class NearPlace : Hashable {
    
    var name: String
    var avatarUrl: URL?
    var distance: Int
    var location : Location
    
    private var cancellables = Set<AnyCancellable>()
    
    init(name: String, avatarUrl: URL?, distance: Int, x: Double, y: Double ){
        self.name = name
        self.avatarUrl = avatarUrl
        self.distance = distance
        self.location = Location(x: x, y: y)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func == (lhs: NearPlace, rhs : NearPlace) -> Bool {
        lhs.name == rhs.name
    }
}
