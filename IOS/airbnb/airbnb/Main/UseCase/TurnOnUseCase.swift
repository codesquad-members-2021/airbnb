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
    
    func loadHeroImage(completionHandler: @escaping (Result<String, NetworkError>) -> Void) {
        networkManager.get(decodingType: String.self, endPoint: EndPoint.heroImage) { dataResponse in
            completionHandler(dataResponse)
        }
    }
    
}
