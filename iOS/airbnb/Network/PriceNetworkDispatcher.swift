//
//  PriceNetworkDispatcher.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import Foundation
import Combine

class PriceNetworkDispatcher: NetworkDispatcher {
    
    func execute<T>(decodeType: T.Type) -> AnyPublisher<T, NetworkError> where T : Decodable {
        
        guard let url = EndPoint.search.url else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        var componets = URLComponents(url: url, resolvingAgainstBaseURL: false)
        let local = URLQueryItem(name: "locationName", value: "서울")
        
        componets?.path.append("/prices/detail")
        componets?.queryItems = [local]
        
        guard let componentURL = componets?.url else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return request(url : componentURL)
    }
}
