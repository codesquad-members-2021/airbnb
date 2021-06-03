//
//  MainPageModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import Foundation

protocol MainPageInterface {
    var curations: [Curation] { get }
    var nearbyDestinations: [NearbyDestination] { get }
    var variousDestinations: [VariousDestination] { get }
}

struct MainPageModel: MainPageInterface {
    let curations: [Curation]
    let nearbyDestinations: [NearbyDestination]
    let variousDestinations: [VariousDestination]
    
    init(mainPageData: MainPageInterface) {
        self.curations = mainPageData.curations
        self.nearbyDestinations = mainPageData.nearbyDestinations
        self.variousDestinations = mainPageData.variousDestinations
    }
}
