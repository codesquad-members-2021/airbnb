//
//  MainPageUseCase.swift
//  Airbnb
//
//  Created by Lia on 2021/05/20.
//

import Foundation
import Combine

class MainPageUseCase {
    
    @Published var mainPage: MainPage!
    @Published var error: Error!
    
    private var networkManager: NetworkManageable
    private var cancelBag = Set<AnyCancellable>()
    
    init(networkManager: NetworkManageable = NetworkManager()) {
        self.networkManager = networkManager
    }
    
}

extension MainPageUseCase  {
    
    func requestMainPage() {
        networkManager.get(type: Main.self, url: EndPoint.url(path: "/main")!)
            .receive(on: DispatchQueue.main)
            .sink { error in
                self.error = error as? Error
            } receiveValue: { games in
                self.mainPage = games.mainPage
            }.store(in: &cancelBag)
    }
    
}
