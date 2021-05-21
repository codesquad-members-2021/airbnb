//
//  SearchedDestination.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/21.
//

import Foundation

class SearchedDestination: DiffableUsableModel {
    var destinationName: String
    
    init(destinationName: String) {
        self.destinationName = destinationName
        super.init()
    }
    
    override func hash(into hasher: inout Hasher) {
      hasher.combine(identifier)
    }

    static func == (lhs: SearchedDestination, rhs: SearchedDestination) -> Bool {
      return lhs.identifier == rhs.identifier
    }
    
    private let identifier = UUID()
}

struct MockSearchedDestinaion {
    static var mockDatas: [SearchedDestination] {
        return [SearchedDestination.init(destinationName: "서울"),
                SearchedDestination.init(destinationName: "울산"),
                SearchedDestination.init(destinationName: "포항"),
                SearchedDestination.init(destinationName: "부산"),
                SearchedDestination.init(destinationName: "부천"),
                SearchedDestination.init(destinationName: "춘천"),
                SearchedDestination.init(destinationName: "부평")
        ]
    }
}
