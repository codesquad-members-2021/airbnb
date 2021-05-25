//
//  LocationManager.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/20.
//

import Foundation
import Combine

final class LocationManager {
    private let networkManager: Networking
    @Published private(set) var mainLayout: MainLayout?

    
    init(getDataManager: Networking) {
        self.networkManager = getDataManager

    }
    
    private func fetchCitiesLocation() {
        networkManager.getData(url: EndPoint.url(path: .cities), decodableType: MainLayout.self) { mainLayout in
            self.mainLayout = mainLayout
        }
    }
}
