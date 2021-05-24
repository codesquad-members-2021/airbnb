//
//  PopularLocationUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

final class PopularLocationUseCase: PopularLocationCaseConfigurable {
    
    enum EndPoint {
        static let popularLocations = "/아직없음"
    }
    
    private var networkManager: AlamofireNetworkManagable
    private var imageLoadManager: AlamofireImageLoadManagable
    
    init(networkManager: AlamofireNetworkManagable, imageLoadManager: AlamofireImageLoadManagable) {
        self.networkManager = networkManager
        self.imageLoadManager = imageLoadManager
    }
    
    convenience init(url: String) {
        let fakeData = FakeData.FakePopularLocations
        let imageLoadManager = AlamofireImageLoadManager()
        self.init(networkManager: FakeNetworkManager(fakeData: fakeData), imageLoadManager: imageLoadManager)
    }
    
    func loadPopularLocations(completionHandler: @escaping (Result<[PopularLocation], NetworkError>) -> Void) {
        let endPoint = EndPoint.popularLocations
        
        networkManager.get(decodingType: [PopularLocation].self, endPoint: endPoint) { dataResponse in
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
    
    func loadPopularLocationImage(from imageUrl: String, completionHandler: @escaping (String) -> Void) {
        imageLoadManager.load(from: imageUrl) { cachePath in
            completionHandler(cachePath)
        }
    }
}
