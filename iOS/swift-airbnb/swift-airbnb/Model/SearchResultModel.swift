//
//  SearchResultModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/24.
//

import Foundation

class SearchResultModel {
    private(set) var searchResultDestinations: [SearchResultDestination]
    
    init() {
        self.searchResultDestinations = []
    }
    
    func updateDestinations(with dataArray: [Document]) {
        var tempSearchResultDestinations: [SearchResultDestination] = []
        for data in dataArray {
            let tempData = SearchResultDestination(addressName: data.addressName, placeName: data.placeName, x: data.x, y: data.y)
            tempSearchResultDestinations.append(tempData)
        }
        self.searchResultDestinations = tempSearchResultDestinations
    }
}
