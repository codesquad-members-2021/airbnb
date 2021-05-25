//
//  NetworkManager.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/20.
//

import Alamofire
import Foundation


protocol Networking {
    func getData<T: Decodable>(url: String, decodableType: T.Type, completion: @escaping (T) -> Void)
}

final class NetworkManager: Networking {
    func getData<T: Decodable>(url: String, decodableType: T.Type, completion: @escaping (T) -> Void) {
        AF.request(url,
                   method: .get,
                   parameters: nil,
                   encoding: URLEncoding.default,
                   headers: ["Content-Type":"application/json", "Accept":"application/json"])
            .validate(statusCode: 200..<300)
            .responseDecodable(of: decodableType) { response in
                switch response.result {
                case .success:
                    guard let cities = response.value else { return }
                    completion(cities)
                case .failure(let error):
                    print(error)
                }
            }
    }
}

