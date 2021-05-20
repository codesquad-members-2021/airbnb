//
//  AlamofireRequestManagable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

protocol AlamofireRequestManagable {
    func request(for method: HTTPMethod, endPoint: String, parameters: [String: Any]?) -> DataRequest
}
