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
    private var cities: MainLayout?
    @Published private(set) var mainImageData: Data!
    @Published private(set) var cityImagesData: [Data]!
    
    init(getDataManager: Networking) {
        self.getDataManager = getDataManager
    }
    
    func fetchCitiesLocation() {
        getDataManager.getData(url: EndPoint.url(path: .cities), decodableType: MainLayout.self) { cities in
            self.cities = cities
            self.mainImageData = try! Data(contentsOf: URL(string: cities.mainImage)!)
            cities.cities.forEach { city in
                try! self.cityImagesData?.append(Data(contentsOf: URL(string: city.cityImage)!))
            }
        }
    }
}
