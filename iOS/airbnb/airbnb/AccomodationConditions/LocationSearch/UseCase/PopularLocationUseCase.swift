//
//  PopularLocationUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

class PopularLocationUseCase: PopularLocationCaseConfigurable {
    
    enum EndPoint {
        static let popularLocations = "/아직없음"
    }
    
    private var networkManager: AlamofireNetworkManagable
    
    init(networkManager: AlamofireNetworkManagable) {
        self.networkManager = networkManager
    }
    
    convenience init(url: String) {
        let fakeData = FakeData.FakePopularLocations
        self.init(networkManager: FakeNetworkManager(fakeData: fakeData))
    }
    
    func loadPopularLocations(completionHandler: @escaping (Result<[PopularLocation], CustomError>) -> Void) {
        let endPoint = EndPoint.popularLocations
        
        networkManager.get(decodingType: [PopularLocation].self, endPoint: endPoint) { dataResponse in
            guard let statusCode = dataResponse.response?.statusCode else {
                return completionHandler(.failure(CustomError.internet))
            }
            switch statusCode {
            case 200..<300:
                guard let value = dataResponse.value else {
                    return completionHandler(.failure(CustomError.noResult))
                }
                completionHandler(.success(value))
            case 300..<400:
                completionHandler(.failure(CustomError.noResult))
            case 400..<500:
                completionHandler(.failure(CustomError.notAllowed))
            case 500...:
                completionHandler(.failure(CustomError.server))
            default:
                completionHandler(.failure(CustomError.unknown))
            }
        }
    }
}
