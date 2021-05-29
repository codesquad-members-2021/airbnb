//
//  Endpoint.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

enum Endpoint {
    private static let scheme = "http"
    private static let host = "airbnb.clone.r-e.kr"
    private static let searchPath = "/api/search/"
    
    static func searchURL(text: String) -> URL? {
        var components = URLComponents()
        components.scheme = Endpoint.scheme
        components.host = Endpoint.host
        components.path = searchPath + text
        return components.url
    }
}
