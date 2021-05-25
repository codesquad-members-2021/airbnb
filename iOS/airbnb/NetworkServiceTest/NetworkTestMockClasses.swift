//
//  NetworkTestMockClasses.swift
//  NetworkServiceTest
//
//  Created by Song on 2021/05/25.
//

import Foundation
import Alamofire

final class NetworkSuccess: NetworkManagable {
    func get<T>(decodingType: T.Type,
                endPoint: String,
                completionHandler: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable {
        let fakeResponse = HTTPURLResponse(url: URL(string: "fake.com")!, statusCode: 200, httpVersion: nil, headerFields: nil)
        let fakeData = FakeData.PopularLocations
        let fakeDataResponse = DataResponse<T, NetworkError>(request: nil,
                                        response: fakeResponse,
                                        data: nil,
                                        metrics: nil,
                                        serializationDuration: 0,
                                        result: .success(fakeData as! T))
        let result = fakeDataResponse.result
        completionHandler(result)
    }
}

final class NetworkFailure: NetworkManagable {
    func get<T>(decodingType: T.Type, endPoint: String, completionHandler: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable {
        let fakeResponse = HTTPURLResponse(url: URL(string: "fake.com")!, statusCode: 400, httpVersion: nil, headerFields: nil)
        let fakeDataResponse = DataResponse<T, NetworkError>(request: nil,
                                        response: fakeResponse,
                                        data: nil,
                                        metrics: nil,
                                        serializationDuration: 0,
                                        result: .failure(NetworkError.notAllowed))
        let result = fakeDataResponse.result
        completionHandler(result)
    }
}
