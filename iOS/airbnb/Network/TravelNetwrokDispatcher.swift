//
//  NetworkTask.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/01.
//

import Foundation
import Combine

class TravelNetwrokDispatcher: NetworkDispatcher {
    
    func execute<T>(url: EndPoint, decodeType: T.Type) -> AnyPublisher<T, NetworkError> where T : Decodable {
        guard let url = EndPoint.search.url else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return request(url : url)
    }
    
    private func request<T: Decodable>(url: URL) -> AnyPublisher<T, NetworkError> {
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
