//
//  NetworkServiceTest.swift
//  NetworkServiceTest
//
//  Created by Song on 2021/05/25.
//

import XCTest

class NetworkServiceTest: XCTestCase {

    private var dummy: [PopularLocation]?
    
    override func setUpWithError() throws {
        super.setUp()
        dummy = FakeData.PopularLocations
    }

    override func tearDownWithError() throws {
        super.tearDown()
        dummy = nil
    }

    func testNetworkSuccess() throws {
        let networkManager = NetworkSuccess()
        let promise = expectation(description: "데이터가 일치합니다")
        networkManager.get(decodingType: [PopularLocation].self, endPoint: "") { result in
            switch result {
            case .success(let data):
                if let dummy = self.dummy, data == dummy {
                    promise.fulfill()
                } else {
                    XCTFail("데이터가 일치하지 않습니다")
                }
            case .failure(_):
                XCTFail("데이터를 받아오지 못했습니다")
            }
        }
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testNetworkFailure() throws {
        let networkManager = NetworkFailure()
        let promise = expectation(description: "접근 에러가 발생했습니다")
        networkManager.get(decodingType: [PopularLocation].self, endPoint: "") { result in
            switch result {
            case .success(_):
                XCTFail("태스크가 성공하였습니다")
            case .failure(let error):
                if NetworkError.notAllowed == error {
                    promise.fulfill()
                } else {
                    XCTFail("다른 에러가 발생하였습니다")
                }
            }
        }
        waitForExpectations(timeout: 1.0, handler: nil)
    }

}
