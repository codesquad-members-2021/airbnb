//
//  SearchPageModelTests.swift
//  swift-airbnbTests
//
//  Created by user on 2021/05/25.
//

import XCTest

class SearchPageModelTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_SearchPageModel_의존성주입() throws {
        let nearbyPopularDestination = NearbyPopularDestination(cityImage: "cityImage", cityName: "서초", distance: "3", x: 1.2, y: 1.5)
        var searchPageMock = SearchPageMock()
        searchPageMock.nearbyPopularDestinations.append(nearbyPopularDestination)
        
        let searchPageModel = SearchPageModel(searchPageData: searchPageMock)
        
        XCTAssertEqual(searchPageModel.searchPageInterface.nearbyPopularDestinations, [nearbyPopularDestination])
    }

}
