//
//  NetworkManager.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

final class AlamofireNetworkManager: NetworkManagable {
    
    private let requestManager: AlamofireRequestManagable

    init(with baseAddress: String) {
        self.requestManager = AlamofireRequestManager(baseAddress: baseAddress)
    }

    func get<T: Decodable>(decodingType: T.Type, endPoint: String,
                           completionHandler: @escaping (Result<T, NetworkError>) -> Void) {
        let request = requestManager.request(for: .get, endPoint: endPoint, parameters: nil)
        request.responseDecodable(of: decodingType) { dataResponse in
            guard let statusCode = dataResponse.response?.statusCode else {
                return completionHandler(.failure(NetworkError.internet))
            }
            switch statusCode {
            case 200..<300:
                guard let data = dataResponse.value else {
                    return completionHandler(.failure(NetworkError.noResult))
                }
                completionHandler(.success(data))
            case 300..<400:
                completionHandler(.failure(NetworkError.noResult))
            case 400..<500:
                completionHandler(.failure(NetworkError.notAllowed))
            case 500...:
                completionHandler(.failure(NetworkError.server))
            default:
                completionHandler(.failure(NetworkError.unknown))
            }
        }
    }
    
}


