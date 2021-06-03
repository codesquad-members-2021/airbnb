//
//  AlamofireNetworkManagable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol NetworkManagable {
    func get<T: Decodable>(decodingType: T.Type,
                           endPoint: String,
                           completionHandler: @escaping (Result<T, NetworkError>) -> Void)
}
