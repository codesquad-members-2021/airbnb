//
//  NetworkDispatcher.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/02.
//

import Foundation
import Combine

protocol NetworkDispatcher {
    
    func execute<T:Decodable>(url : EndPoint, decodeType: T.Type) -> AnyPublisher<T,NetworkError>
    
}
