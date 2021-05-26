//
//  EndPoint.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/18.
//

import Foundation
import Alamofire

protocol Requestable {
    var baseURL: String { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    func url() -> URL?
}

struct MainAPIEndPoint: Requestable {
    var baseURL = ""
    var path: String
    var httpMethod: HTTPMethod
    
    init(path: String, httpMethod: HTTPMethod) {
        self.path = path
        self.httpMethod = httpMethod
    }
    
    func url() -> URL? {
        return URL(string: baseURL + path)
    }
}
