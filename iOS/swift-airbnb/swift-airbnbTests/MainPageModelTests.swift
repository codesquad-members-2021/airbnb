//
//  swift_airbnbTests.swift
//  swift-airbnbTests
//
//  Created by user on 2021/05/18.
//

import XCTest
@testable import swift_airbnb

class MainPageModelTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_MainPageModel_의존성주입() throws {
        let curationMock = Curation(curationImage: "curationImage")
        let nearbyDestinationMock = NearbyDestination(cityImage: "nearbyImage", cityName: "서초", distance: "3")
        let variousDestinationMock = VariousDestination(destinationImage: "variousDestination", destinationDescription: "코드스쿼드")
        var mainPageMockData = MainPageMock()
        mainPageMockData.curations.append(curationMock)
        mainPageMockData.nearbyDestinations.append(nearbyDestinationMock)
        mainPageMockData.variousDestinations.append(variousDestinationMock)
        
        let mainPageModel = MainPageModel(mainPageData: mainPageMockData)
        
        XCTAssertEqual(mainPageModel.curations, [curationMock])
        XCTAssertEqual(mainPageModel.nearbyDestinations, [nearbyDestinationMock])
        XCTAssertEqual(mainPageModel.variousDestinations, [variousDestinationMock])
    }
}
