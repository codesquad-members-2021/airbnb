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

    static func loadTravelList(type : EndPoint) -> AnyPublisher<[NearPlaceResponse], APIServiceError> {
        let request = AF.request(type.url, method: .get)
        return APIService().run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
    
    static func loadTravelList(type : EndPoint, with limit : Int) -> AnyPublisher<[NearPlaceResponse], APIServiceError> {
        let parameter: Parameters = [
            "limit" : String(limit)
        ]
        let request = AF.request(type.url, method: .get, parameters: parameter)
        return APIService().run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
