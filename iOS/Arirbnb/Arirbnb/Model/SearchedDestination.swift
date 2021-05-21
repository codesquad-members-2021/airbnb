//
//  SearchedDestination.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/21.
//

import Foundation

struct SearchedDestination {
    var destinationName: String
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
