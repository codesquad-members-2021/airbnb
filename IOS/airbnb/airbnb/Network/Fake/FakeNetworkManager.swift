//
//  FakeNetworkManager.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

final class FakeNetworkManager: NetworkManagable {
    
    private let fakeData: Decodable
    
    init(fakeData: Decodable) {
        self.fakeData = fakeData
    }
    
    func get<T: Decodable>(decodingType: T.Type, endPoint: String,
                completionHandler: @escaping (Result<T, NetworkError>) -> Void) {
        let fakeResponse = HTTPURLResponse(url: URL(string: "fake.com")!, statusCode: 200, httpVersion: nil, headerFields: nil)
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

struct FakeData {
    static let FakeHeroImagePath = ImagePath.cover
    static let FakePopularLocations = [
        PopularLocation(name: "달", distanceFromHere: "우주선으로 100시간", imagePath: ImagePath.moon),
        PopularLocation(name: "안드로메다", distanceFromHere: "우주선으로 1천 시간", imagePath: ImagePath.andro),
        PopularLocation(name: "하와이", distanceFromHere: "걸어서 2만 시간", imagePath: ImagePath.hawaii),
        PopularLocation(name: "코드스쿼드", distanceFromHere: "걸어서 6시간", imagePath: ImagePath.codesquad)
        ]
    static let FakeSearchResults = [
        Location(name: "지구", coordinate: Coordinate(latitude: 1, longitude: 1)),
        Location(name: "은하계", coordinate: Coordinate(latitude: 1, longitude: 1)),
        Location(name: "방구석", coordinate: Coordinate(latitude: 1, longitude: 1))]
}

enum ImagePath {
    static let cover = "https://user-images.githubusercontent.com/72188416/119007491-3c3c8c00-b9cc-11eb-9034-890f50bda4ef.jpg"
    static let moon = "https://user-images.githubusercontent.com/72188416/118993854-d1d21e80-b9c0-11eb-9439-35d1591b0684.jpg"
    static let andro = "https://user-images.githubusercontent.com/72188416/118993847-d1d21e80-b9c0-11eb-9bf4-01a91eb04ab7.jpg"
    static let hawaii = "https://user-images.githubusercontent.com/72188416/118993832-ced72e00-b9c0-11eb-9adc-e16fba4d5be0.png"
    static let codesquad = "https://user-images.githubusercontent.com/72188416/119002071-8111f400-b9c7-11eb-885f-90f0d67037a9.png"
}
