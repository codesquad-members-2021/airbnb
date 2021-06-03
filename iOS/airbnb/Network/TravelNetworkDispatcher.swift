//
//  TravelNetworkDispatcher.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/01.
//

import Foundation
import Combine

class TravelNetworkDispatcher: NetworkDispatcher {
    
    func execute<T>(decodeType: T.Type) -> AnyPublisher<T, NetworkError> where T : Decodable {
        guard let url = EndPoint.search.url else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return request(url : url)
    }

}

class PriceNetworkDispatcher: NetworkDispatcher {
    
    func execute<T>(decodeType: T.Type) -> AnyPublisher<T, NetworkError> where T : Decodable {
        
        guard let url = EndPoint.search.url else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        var componets = URLComponents(url: url, resolvingAgainstBaseURL: false)
        componets?.path.append("/prices/")
        
        let local = URLQueryItem(name: "locationName", value: "서울")
        componets?.queryItems = [local]
        guard let componentURL = componets?.url else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return request(url : componentURL)
    }
}
