//
//  NewSearchUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

final class NewSearchUseCase: NewSearchCaseConfigurable {
    
    enum EndPoint {
        static let searchResult = "/아직없음"
    }
    
    private var networkManager: AlamofireNetworkManagable
    
    init(networkManager: AlamofireNetworkManagable) {
        self.networkManager = networkManager
    }
    
    convenience init(url: String) {
        let fakeData = FakeData.FakeSearchResults
        self.init(networkManager: FakeNetworkManager(fakeData: fakeData))
    }
    
    func search(for keyword: String,
                completionHandler: @escaping (Result<[LocationSearchResult], NetworkError>) -> Void) {
        let endPoint = EndPoint.searchResult + "\(keyword)"
    
        networkManager.get(decodingType: [LocationSearchResult].self, endPoint: endPoint) { dataResponse in
            guard let statusCode = dataResponse.response?.statusCode else {
                return completionHandler(.failure(NetworkError.internet))
            }
            switch statusCode {
            case 200..<300:
                guard let value = dataResponse.value else {
                    return completionHandler(.failure(NetworkError.noResult))
                }
                completionHandler(.success(value))
            case 300..<400:
                completionHandler(.failure(NetworkError.noResult))
            case 400..<500:
                completionHandler(.failure(NetworkError.notAllowed))
            case 500...:
                completionHandler(.failure(NetworkError.server))
            default:
                completionHandler(.failure(NetworkError.unknown))
            }
        }
    }
    
}
