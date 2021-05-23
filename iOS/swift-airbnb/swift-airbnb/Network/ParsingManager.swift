//
//  ParsingManager.swift
//  swift-airbnb
//
//  Created by user on 2021/05/23.
//

import Foundation

class ParsingManager {
    
    static func encodeData<T: Encodable>(data: T) -> Data? {
        let encoder = JSONEncoder()
        do {
            return try encoder.encode(data)
        } catch {
            return nil
        }
    }
    
    static func decodeData<T: Decodable>(type: T.Type, data: Data) -> T? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            return try decoder.decode(type, from: data)
        } catch {
            return nil
        }
    }
}
