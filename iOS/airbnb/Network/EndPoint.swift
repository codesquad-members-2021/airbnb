//
//  EndPoint.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import Foundation

enum EndPoint : String, CodingKey {
    case search
    case reservation
    case prices
    case wishList
    
    static let baseURL = "http://13.125.93.217:8080/api/"

    var path : String { self.stringValue }
    var url : URL? { URL(string: EndPoint.baseURL + path) }
}
