//
//  NetworkDispatcher.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/02.
//

import Foundation
import Combine

protocol NetworkDispatcher {
    
    func execute<T:Decodable>(decodeType: T.Type) -> AnyPublisher<T,NetworkError>
    func request<T: Decodable>(url: URL) -> AnyPublisher<T, NetworkError>
}

extension NetworkDispatcher {
    
    func request<T: Decodable>(url: URL) -> AnyPublisher<T, NetworkError> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .mapError { _ in
                NetworkError.invalidRequest
            }
            .flatMap { (data, response) -> AnyPublisher<T, NetworkError> in
                guard let httpResponse = response as? HTTPURLResponse else {
                    return Fail(error: NetworkError.invalidResponse).eraseToAnyPublisher()
                }
                guard 200..<300 ~= httpResponse.statusCode else {
                    return Fail(error: NetworkError.invalidStatusCode(httpResponse.statusCode))
                        .eraseToAnyPublisher()
                }
                return Just(data)
                    .decode(type: T.self, decoder: JSONDecoder())
                    .mapError { _ in
                        NetworkError.failParsing
                    }.eraseToAnyPublisher()
            }.eraseToAnyPublisher()
    }
}
