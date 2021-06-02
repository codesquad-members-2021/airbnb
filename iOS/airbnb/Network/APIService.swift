//
//  API.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import Alamofire
import Foundation
import Combine

class APIService {

    struct Response<T> {
        let value: T
        let response : URLResponse
    }
    
    func run<T: Decodable>(_ request: DataRequest, _ decoder: JSONDecoder = JSONDecoder()) -> AnyPublisher<APIService.Response<T>, APIServiceError> {
        return request
            .validate(contentType: ["application/json"])
            .publishData(emptyResponseCodes: [200, 204, 205])
            .tryMap { result -> APIService.Response<T> in
                // TODO: Error Handling
                if let data = result.data {
                    // 응답이 성공이고 result가 있을 때
                    let value = try decoder.decode(T.self, from: data)
                    return Response(value: value, response: result.response!)
                } else {
                    // 응답이 성공이고 result가 없을 때 Empty를 리턴
                    return Response(value: Empty.emptyValue() as! T, response: result.response!)
                }
            }
            .mapError({ (error) -> APIServiceError in
                if let apiError = error as? APIServiceError {
                    return apiError
                } else {
                    return .other(error)
                }
            })
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
