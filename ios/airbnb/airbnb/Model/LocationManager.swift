//
//  LocationManager.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/20.
//

import Foundation
import Combine

final class LocationManager {
    private let getDataManager: Networking
    @Published private(set) var mainLayout: MainLayout?
    @Published private(set) var mainImageData: Data!
    @Published private(set) var cityImagesData: [Data]!
    @Published private(set) var extraImagesData: [Data]!
    
    init(getDataManager: Networking) {
        self.getDataManager = getDataManager
        self.cityImagesData = []
        self.extraImagesData = []
    }
    
    func fetchCitiesLocation() {
        getDataManager.getData(url: EndPoint.url(path: .cities), decodableType: MainLayout.self) { mainLayout in
            self.mainLayout = mainLayout
            self.mainImageData = try! Data(contentsOf: URL(string: mainLayout.mainImage)!)
            mainLayout.cities.forEach { city in
                try! self.cityImagesData.append(Data(contentsOf: URL(string: city.cityImage)!))
            }
            mainLayout.extraImages.forEach { image in
                try! self.extraImagesData.append(Data(contentsOf: URL(string: image)!))
            }
        }
    }
}
