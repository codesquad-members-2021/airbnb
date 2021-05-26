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
    
    static let baseURL = "https://693778e1-7efa-4f8e-ba26-1bdfe0854f99.mock.pstmn.io/api/"

    var path : String { self.stringValue }
    var url : URL { URL(string: EndPoint.baseURL + path)! }
}
