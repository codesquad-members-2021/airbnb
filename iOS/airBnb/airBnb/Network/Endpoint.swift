//
//  Endpoint.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

enum Endpoint {
    private static let scheme = "https"
    private static let host = "b34558c4-ead2-43bd-8c8b-2a1dc745dfde.mock.pstmn.io"
    private static let searchPath = "/api/search/"
    
    static func searchURL(text: String) -> URL? {
        var components = URLComponents()
        components.scheme = Endpoint.scheme
        components.host = Endpoint.host
        components.path = searchPath + text
        return components.url
    }
}
//