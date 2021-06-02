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
    
    static let baseURL = "https://e4557770-5d57-4419-990e-c7cfaffb1f5a.mock.pstmn.io/api/"

    var path : String { self.stringValue }
    var url : URL { URL(string: EndPoint.baseURL + path)! }
}
