//
//  PopularLocationUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation
import Alamofire

class PopularLocationUseCase {
    
    enum EndPoint {
        static let popularLocations = "/아직없음"
    }
    
    private var networkManager: AlamofireNetworkManagable
    
    init(networkManager: AlamofireNetworkManagable) {
        self.networkManager = networkManager
    }
    
    convenience init(url: String) {
        self.init(networkManager: AlamofireNetworkManager(with: url))
    }
    
    func execute(completionHandler: @escaping (Result<[PopularLocation], Error>) -> Void){
        
        let endPoint = EndPoint.popularLocations
        
        networkManager.get(decodingType: [PopularLocation].self, endPoint: endPoint) { response in
            let result = response.result.mapError{ $0 as Error }
            completionHandler(result)
        }
        
    }

}
