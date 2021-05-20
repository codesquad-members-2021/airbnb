//
//  NetworkManager.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

final class AlamofireNetworkManager: AlamofireNetworkManagable {
    
    private let requestManager: AlamofireRequestManagable

    init(with baseAddress: String) {
        self.requestManager = AlamofireRequestManager(baseAddress: baseAddress)
    }

    func get<T: Decodable>(decodingType: T.Type, endPoint: String,
                           completionHandler: @escaping (DataResponse<T, AFError>) -> Void) {
        let request = requestManager.request(for: .get, endPoint: endPoint, parameters: nil)
        request.responseDecodable(of: decodingType, completionHandler: completionHandler)
    }

}
