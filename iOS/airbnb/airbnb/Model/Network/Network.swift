//
//  Network.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/18.
//

import Foundation
import Alamofire

class Network {
    func request<T: Decodable> (with endPoint: Requestable, completion: @escaping (Result<T,AFError>) -> Void) {
        
        guard let url = endPoint.url() else {
            completion(.failure(AFError.createURLRequestFailed(error: NetworkError.url(description: ("Couldn't Create URL")))))
            return
        }
        
        AF.request(url, method: endPoint.httpMethod)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .failure(let error):
                    completion(.failure(error))
                case .success(let data):
                    completion(.success((data)))
                }
            }
    }
}

enum NetworkError:Error {
    case url(description: String)
}
