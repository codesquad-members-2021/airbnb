//
//  TravelListAPI.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import Alamofire
import Foundation
import Combine

class TravelListAPI {

    static func loadTravelList(type : EndPoint) -> AnyPublisher<[NearPlaceResponse], APIError> {
        let request = AF.request(type.url, method: .get)
        return API().run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
    
    static func loadTravelList(type : EndPoint, with limit : Int) -> AnyPublisher<[NearPlaceResponse], APIError> {
        let parameter: Parameters = [
            "limit" : String(limit)
        ]
        let request = AF.request(type.url, method: .get, parameters: parameter)
        return API().run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
