//
//  TurnOnUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

final class HeroImageUseCase: ImageLoadUseCase {
    
    enum EndPoint {
        static let heroImage = "/아직없음"
    }
    
    private var networkManager: NetworkManagable
    private var imageLoadManager: ImageLoadManagable
    
    init(networkManager: NetworkManagable, imageLoadManager: ImageLoadManagable) {
        self.networkManager = networkManager
        self.imageLoadManager = imageLoadManager
    }
    
    convenience init(url: String) {
        let fakeData = FakeData.FakeHeroImagePath
        let imageLoadManager = AlamofireImageLoadManager()
        self.init(networkManager: FakeNetworkManager(fakeData: fakeData), imageLoadManager: imageLoadManager)
    }
    
    func execute(completionHandler: @escaping (Result<String, NetworkError>) -> Void) {
        networkManager.get(decodingType: String.self, endPoint: EndPoint.heroImage) { dataResponse in
            do {
                let imageUrl = try dataResponse.get()
                self.imageLoadManager.load(from: imageUrl) { cacheUrl in
                    completionHandler(.success(cacheUrl))
                }
            } catch {
                completionHandler(dataResponse)
            }
        }
    }
}
