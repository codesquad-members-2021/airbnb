//
//  MainPageModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import Foundation

class MainPageModel {
    private(set) var curations: [CurationModel]
    private(set) var nearbyDestinations: [NearbyDestinationModel]
    private(set) var variousDestinations: [VariousDestinationModel]
    
    init() {
        self.curations = []
        self.nearbyDestinations = []
        self.variousDestinations = []
        
        self.curations = makeMockCuration()
        self.nearbyDestinations = makeMockNearbyDestination()
        self.variousDestinations = makeMockVariousDestination()
    }
    
    private func makeMockCuration() -> [CurationModel] {
        let imageArray = ["MainPageCurationImage"]
        var curations: [CurationModel] = []
        
        for index in 0..<imageArray.count {
            curations.append(CurationModel(curationImage: imageArray[index]))
        }
        return curations
    }
    
    private func makeMockNearbyDestination() -> [NearbyDestinationModel] {
        let imageArray = ["Seoul", "Gwangju", "Uijeongbu", "Suwon", "Daegu", "Ulsan", "Daejeon", "Bucheon"]
        let cityNameArray = ["서울", "광주", "의정부시", "수원시", "대구", "울산", "대전", "부천시"]
        let distanceArray = ["30분", "4시간", "30분", "45분", "3.5시간", "4.5시간", "2시간", "30분"]
        var nearbyDestinations: [NearbyDestinationModel] = []
        
        for index in 0..<imageArray.count {
            nearbyDestinations.append(NearbyDestinationModel(cityImage: imageArray[index], cityName: cityNameArray[index], distance: distanceArray[index]))
        }
        return nearbyDestinations
    }
    
    private func makeMockVariousDestination() -> [VariousDestinationModel] {
        let imageArray = ["withNature", "FancySpace", "WholeHouse", "withPet"]
        let descriptionArray = ["자연생활을 만끽할 수\n있는 숙소", "독특한 공간\n", "집 전체\n", "반려동물 동반 가능\n"]
        var variousDestinations: [VariousDestinationModel] = []
        
        for index in 0..<imageArray.count {
            variousDestinations.append(VariousDestinationModel(destinationImage: imageArray[index], destinationDescription: descriptionArray[index]))
        }
        return variousDestinations
    }
}
