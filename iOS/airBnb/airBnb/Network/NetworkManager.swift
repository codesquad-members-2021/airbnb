//
//  NetworkManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation
import Combine

protocol NetworkManageable {
    func requestResource<T: Decodable>(from location: String) -> AnyPublisher<T,NetworkError>
}

final class NetworkManager: NetworkManageable {
    
    func requestResource<T: Decodable>(from location: String) -> AnyPublisher<T,NetworkError> {
        guard let url = Endpoint.searchURL(text: location) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return request(from: url)
    }
    
    private func request<T : Decodable>(from url: URL) -> AnyPublisher<T, NetworkError> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .delay(for: .seconds(0.5), scheduler: DispatchQueue.global())
            .mapError { _ in
                NetworkError.invalidRequest
            }
            .flatMap { (data, response) -> AnyPublisher<T, NetworkError> in
                guard let httpResponse = response as? HTTPURLResponse else {
                    return Fail(error: NetworkError.invalidResponse).eraseToAnyPublisher()
                }
                guard 200..<300 ~= httpResponse.statusCode else {
                    return Fail(error:NetworkError.invalidStatusCode(httpResponse.statusCode)).eraseToAnyPublisher()
                }
                return Just(data)
                    .decode(type: T.self, decoder: JSONDecoder())
                    .mapError { _ in
                        NetworkError.failParsing
                    }.eraseToAnyPublisher()
            }.eraseToAnyPublisher()
    }
}
