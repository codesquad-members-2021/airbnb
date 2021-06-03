//
//  SearchRoomsUseCase.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import Foundation
import Combine

class SearchRoomsUseCase {
    
    @Published var rooms: Rooms!
    @Published var error: Error!
    
    private var networkManager: NetworkManageable
    private var cancelBag = Set<AnyCancellable>()
    
    init(networkManager: NetworkManageable = NetworkManager()) {
        self.networkManager = networkManager
    }
    
}

extension SearchRoomsUseCase  {
    
    func requestPirce(condition: ConditionData) {
        networkManager.post(url: EndPoint.url(path: "/rooms")!, data: condition, result: Rooms.self)
            .receive(on: DispatchQueue.main)
            .sink { error in
                self.error = error as? Error
            } receiveValue: { rooms in
                self.rooms = rooms.self
            }.store(in: &cancelBag)
    }
    
}
