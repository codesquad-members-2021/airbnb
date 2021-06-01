//
//  NearPlace.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import Foundation
import Combine

class NearPlace : Hashable {
    
    var name: String
    var avatarUrl: URL?
    var distance: Int
    var coordinate : Coordinate
    
    private var cancellables = Set<AnyCancellable>()
    
    init(name: String, avatarUrl: URL?, distance: Int, coordinate: Coordinate ){
        self.name = name
        self.avatarUrl = avatarUrl
        self.distance = distance
        self.coordinate = coordinate
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func == (lhs: NearPlace, rhs : NearPlace) -> Bool {
        lhs.name == rhs.name
    }
}
