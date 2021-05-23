//
//  SearchLocationUseCase.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation
import Combine

protocol SearchLocationConfigurable {
    func requestSearchLocation(from location: String) -> AnyPublisher<SearchLoaction, NetworkError>
}

final class SearchLocationUseCase: SearchLocationConfigurable {
    
    private let networkManager: NetworkManageable
    
    init(networkManage: NetworkManageable) {
        self.networkManager = networkManage
    }
    
    convenience init() {
        self.init(networkManage: NetworkManager())
    }
    
    func requestSearchLocation(from location: String) -> AnyPublisher<SearchLoaction, NetworkError> {
        return networkManager.requestResource(from: location)
    }
}
