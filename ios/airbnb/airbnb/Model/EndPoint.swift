//
//  EndPoint.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/20.
//

import Foundation

enum EndPoint {
    static let scheme = "http"
    static let host = "52.78.158.138"
    static let port = 8080
    
    enum Path: String {
        case cities = "/cities"
    }
    
    static func url(path: Path, queryItems: [URLQueryItem]? = nil) -> String {
        var component = URLComponents()
        component.scheme = scheme
        component.host = host
        component.port = port
        component.path = {
            switch path {
            case .cities : return path.rawValue
            }
        }()
        component.queryItems = queryItems
        guard let urlString = component.url?.absoluteString else { return "somethingwrong" }
        return urlString
    }
}

enum QueryItems {
    case checkIn
    case checkOut
    case cityName
    
    func assign(value: String) -> URLQueryItem {
        switch self {
        case .checkIn:
            return URLQueryItem(name: "checkIn", value: value)
        case .checkOut:
            return URLQueryItem(name: "checkOut", value: value)
        case .cityName:
            return URLQueryItem(name: "cityName", value: value)
        }
    }
}
