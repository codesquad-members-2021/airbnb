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
    
    static func url(path: Path) -> String {
        var component = URLComponents()
        component.scheme = scheme
        component.host = host
        component.port = port
        component.path = {
            switch path {
            case .cities : return path.rawValue
            }
        }()
        guard let urlString = component.url?.absoluteString else { return "somethingwrong" }
        return urlString
    }
    
}
