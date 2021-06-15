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
