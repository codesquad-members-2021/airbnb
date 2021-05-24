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
    
    func loadPopularLocations(completionHandler: @escaping (Result<[PopularLocation], NetworkError>) -> Void) {
        let endPoint = EndPoint.popularLocations
        networkManager.get(decodingType: [PopularLocation].self, endPoint: endPoint) { dataResponse in
            completionHandler(dataResponse)
        }
    }
    
    func loadPopularLocationImage(from imageUrl: String, completionHandler: @escaping (String) -> Void) {
        imageLoadManager.load(from: imageUrl) { cachePath in
            completionHandler(cachePath)
        }
    }
}
