//
//  SearchPageModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/21.
//

import Foundation

protocol SearchPageInterface {
    var nearbyPopularDestinations: [NearbyPopularDestination] { get }
}

struct SearchPageModel {
    private(set) var searchPageInterface: SearchPageInterface
    
    init(searchPageData: SearchPageInterface) {
        self.searchPageInterface = searchPageData
    }
}
