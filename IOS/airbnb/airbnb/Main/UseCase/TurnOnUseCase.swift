//
//  TurnOnUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation
import Alamofire

final class TurnOnUseCase: TurnOnCaseConfigurable {
    
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
    
    func loadHeroImage(completionHandler: @escaping (Result<String, NetworkError>) -> Void) {
        networkManager.get(decodingType: String.self, endPoint: EndPoint.heroImage) { [weak self] dataResponse in
            guard let statusCode = dataResponse.response?.statusCode else {
                return completionHandler(.failure(NetworkError.internet))
            }
            switch statusCode {
            case 200..<300:
                guard let imageUrl = dataResponse.value else {
                    return completionHandler(.failure(NetworkError.noResult))
                }
                self?.imageLoadManager.load(from: imageUrl) { cacheUrl in
                    completionHandler(.success(cacheUrl))
                }
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
