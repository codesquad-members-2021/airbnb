//
//  FakeNetworkManager.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

struct FakeData {
    static let FakePopularLocations = [
        PopularLocation(name: "달", distanceFromHere: "우주선으로 100시간", imagePath: ""),
        PopularLocation(name: "안드로메다", distanceFromHere: "우주선으로 1천 시간", imagePath: ""),
        PopularLocation(name: "하와이", distanceFromHere: "걸어서 2만 시간", imagePath: ""),
        PopularLocation(name: "코드스쿼드", distanceFromHere: "걸어서 6시간", imagePath: "")
        ]
    static let FakeSearchResults = [
        LocationSearchResult(name: "지구", coordinate: Coordinate()),
        LocationSearchResult(name: "은하계", coordinate: Coordinate()),
        LocationSearchResult(name: "방구석", coordinate: Coordinate())]
}

class FakeNetworkManager: AlamofireNetworkManagable {
    
    private let fakeData: Decodable
    
    init(fakeData: Decodable) {
        self.fakeData = fakeData
    }
    
    func get<T: Decodable>(decodingType: T.Type, endPoint: String,
                completionHandler: @escaping (DataResponse<T, AFError>) -> Void) {
        let fakeResponse = HTTPURLResponse(url: URL(string: "fake.com")!, statusCode: 200, httpVersion: nil, headerFields: nil)
        let fakeDataResponse = DataResponse<T, AFError>(request: nil,
                                        response: fakeResponse,
                                        data: nil,
                                        metrics: nil,
                                        serializationDuration: 0,
                                        result: .success(fakeData as! T))
        completionHandler(fakeDataResponse)
    }
    
}
