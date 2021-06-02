//
//  LoadError.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import Foundation

enum APIServiceError : Error {
    case statusCode
    case decoding
    case invalidImage
    case invalidURL
    case other(Error)
    
    static func map(_ error: Error) -> APIServiceError {
        return (error as? APIServiceError) ?? .other(error)
    }
}
