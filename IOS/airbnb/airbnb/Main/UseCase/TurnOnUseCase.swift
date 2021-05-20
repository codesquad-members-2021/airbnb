//
//  TurnOnUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation
import Alamofire

class TurnOnUseCase: TurnOnCaseConfigurable {
    
    enum EndPoint {
        static let heroImage = "/아직없음"
    }
    
    private var networkManager: AlamofireNetworkManagable
    private var imageLoadManager: AlamofireImageLoadManagable
    
    init(networkManager: AlamofireNetworkManagable, imageLoadManager: AlamofireImageLoadManagable) {
        self.networkManager = networkManager
        self.imageLoadManager = imageLoadManager
    }
    
    convenience init(url: String) {
        let fakeData = FakeData.FakeHeroImagePath
        let imageLoadManager = AlamofireImageLoadManager()
        self.init(networkManager: FakeNetworkManager(fakeData: fakeData), imageLoadManager: imageLoadManager)
    }
    
    func loadHeroImage(completionHandler: @escaping (Result<String, CustomError>) -> Void) {
        networkManager.get(decodingType: String.self, endPoint: EndPoint.heroImage) { dataResponse in
            guard let statusCode = dataResponse.response?.statusCode else {
                return completionHandler(.failure(CustomError.internet))
            }
            switch statusCode {
            case 200..<300:
                guard let imageUrl = dataResponse.value else {
                    return completionHandler(.failure(CustomError.noResult))
                }
                self.imageLoadManager.load(from: imageUrl) { cacheUrl in
                    completionHandler(.success(cacheUrl))
                }
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
