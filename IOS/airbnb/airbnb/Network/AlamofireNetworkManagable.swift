//
//  AlamofireNetworkManagable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

protocol AlamofireNetworkManagable {
    func get<T: Decodable>(decodingType: T.Type, endPoint: String,
                           completionHandler: @escaping (DataResponse<T, AFError>) -> Void)
}
