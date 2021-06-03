//
//  PopularLocationUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

final class PopularLocationUseCase: PopularLocationLoadUseCase {
    
    enum EndPoint {
        static let popularLocations = "/아직없음"
    }
    
    private var networkManager: NetworkManagable
    private var imageLoadManager: ImageLoadManagable
    
    init(networkManager: NetworkManagable, imageLoadManager: ImageLoadManagable) {
        self.networkManager = networkManager
        self.imageLoadManager = imageLoadManager
    }
    
    convenience init(url: String) {
        let fakeData = FakeData.FakePopularLocations
        let imageLoadManager = AlamofireImageLoadManager()
        self.init(networkManager: FakeNetworkManager(fakeData: fakeData), imageLoadManager: imageLoadManager)
    }
    
    func execute(completionHandler: @escaping (Result<[PopularLocation], NetworkError>) -> Void) {
        let endPoint = EndPoint.popularLocations
        networkManager.get(decodingType: [PopularLocation].self, endPoint: endPoint) { dataResponse in
            completionHandler(dataResponse)
        }
    }
    
    func execute(with imageUrl: String, completionHandler: @escaping (String) -> Void) {
        imageLoadManager.load(from: imageUrl) { cachePath in
            completionHandler(cachePath)
        }
    }
    
}
