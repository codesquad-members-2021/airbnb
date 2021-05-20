//
//  JSONParser.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/20.
//

import Foundation

struct JSONParser {
    static func parse<T: Decodable>(jsonData: Data, to type: T.Type) -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try? decoder.decode(type, from: jsonData)
    }
}
