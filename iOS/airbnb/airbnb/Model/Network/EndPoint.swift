//
//  EndPoint.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/18.
//

import Foundation

protocol Requestable {
    var baseURL: String { get }
    var path: String { get }
    func url() -> URL?
}

struct MainAPIEndPoint: Requestable {
    var baseURL: String
    
    var path: String
    
    func url() -> URL? {
        return URL(string: baseURL + path)
    }
}
