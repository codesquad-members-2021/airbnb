//
//  SearchPageModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/21.
//

import Foundation

class SearchPageModel {
    private(set) var nearbyPopularDestinations: [NearbyPopularDestination]
    
    init() {
        self.nearbyPopularDestinations = []
        self.nearbyPopularDestinations = makeMockNearbyPopularDestination()
    }
    
    private func makeMockNearbyPopularDestination() -> [NearbyPopularDestination] {
        let imageArray = ["Seoul", "Gwangju", "Uijeongbu", "Suwon", "Daegu", "Ulsan", "Daejeon", "Bucheon"]
        let cityNameArray = ["서울", "광주", "의정부시", "수원시", "대구", "울산", "대전", "부천시"]
        let distanceArray = ["30분", "4시간", "30분", "45분", "3.5시간", "4.5시간", "2시간", "30분"]
        let xArray = [126.972091251236, 126.909264297873, 127.046119896907, 127.00004960484385, 128.597046578301, 129.138660047414, 127.43411216191, 126.783081743529]
        let yArray = [37.5559802396321, 35.1653524622591, 37.7378795089645, 37.26568218296588, 35.8763278301904, 35.5515431908006, 36.332299690899, 37.4839888842916]
        var nearbyPopularDestinations: [NearbyPopularDestination] = []
        
        for index in 0..<imageArray.count {
            nearbyPopularDestinations.append(NearbyPopularDestination(cityImage: imageArray[index], cityName: cityNameArray[index], distance: distanceArray[index], x: xArray[index], y: yArray[index]))
        }
        return nearbyPopularDestinations
    }
}
