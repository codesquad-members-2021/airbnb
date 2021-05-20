//
//  AlamofireRequestManager.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

final class AlamofireRequestManager: AlamofireRequestManagable {
    
    private let baseAddress: String
    private let headers: HTTPHeaders
    
    init(baseAddress: String, headers: HTTPHeaders) {
        self.baseAddress = baseAddress
        self.headers = headers
    }
    
    convenience init(baseAddress: String) {
        let basicHeaders: HTTPHeaders = ["Content-Type":"application/json", "Accept":"application/json"]
        self.init(baseAddress: baseAddress, headers: basicHeaders)
    }
    
    func request(for method: HTTPMethod, endPoint: String, parameters: [String: Any]?) -> DataRequest {
        let entireAddress = self.baseAddress + endPoint
        return AF.request(entireAddress,
                          method: method,
                          parameters: parameters,
                          encoding: URLEncoding.default,
                          headers: self.headers)
    }
    
}
