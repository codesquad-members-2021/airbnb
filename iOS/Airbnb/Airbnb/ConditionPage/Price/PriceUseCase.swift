//
//  PriceUseCase.swift
//  Airbnb
//
//  Created by Lia on 2021/06/02.
//

import Foundation
import Combine

class PriceUseCase {
    
    @Published var prices: Prices!
    @Published var error: Error!
    
    private var networkManager: NetworkManageable
    private var cancelBag = Set<AnyCancellable>()
    
    init(networkManager: NetworkManageable = NetworkManager()) {
        self.networkManager = networkManager
    }
    
}

extension PriceUseCase  {
    
    func requestPirce(condition: ConditionData) {
        networkManager.post(url: EndPoint.url(path: "/rooms/price")!, data: condition, result: Prices.self)
            .receive(on: DispatchQueue.main)
            .sink { error in
                self.error = error as? Error
            } receiveValue: { games in
                self.prices = games.self
            }.store(in: &cancelBag)
    }
    
}

struct Prices: Decodable {
    var prices: [Int]
}
