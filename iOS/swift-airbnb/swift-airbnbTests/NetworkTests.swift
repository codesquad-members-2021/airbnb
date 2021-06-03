//
//  SearchResultModelTests.swift
//  swift-airbnbTests
//
//  Created by user on 2021/05/27.
//

import XCTest

class NetworkTests: XCTestCase {

    var sampleData: Data {
        Data(
            """
            {
              "documents": [
                {
                  "address_name": "서울 강남구 역삼동 836-24",
                  "category_group_code": "",
                  "category_group_name": "",
                  "category_name": "서비스,산업 > 인터넷,IT > 소프트웨어",
                  "distance": "",
                  "id": "1313843682",
                  "phone": "070-4117-1005",
                  "place_name": "코드스쿼드",
                  "place_url": "http://place.map.kakao.com/1313843682",
                  "road_address_name": "서울 강남구 강남대로62길 23",
                  "x": "127.03342973835",
                  "y": "37.4908543445167"
                }
              ],
              "meta": {
                "is_end": true,
                "pageable_count": 1,
                "same_name": {
                  "keyword": "코드스쿼드",
                  "region": [],
                  "selected_region": ""
                },
                "total_count": 1
              }
            }
            """.utf8
        )
    }
    
    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func test_ParsingManager_성공() throws {
        let decodedSampleData = ParsingManager.decodeData(type: SearchResultDTO.self, data: sampleData)
        
        XCTAssertEqual(decodedSampleData?.documents[0].addressName, "서울 강남구 역삼동 836-24")
        XCTAssertEqual(decodedSampleData?.documents[0].id, "1313843682")
        XCTAssertEqual(decodedSampleData?.documents[0].placeName, "코드스쿼드")
    }
    
    func test_ParsingManager_실패() throws {
        let sampleData = Data(
            """
            {
              "documents": [
                {
                  "address_name": "서울 강남구 역삼동 836-24"
                }
              ],
              "meta": {
                "is_end": true
              }
            }
            """.utf8)
        let decodedSampleData = ParsingManager.decodeData(type: SearchResultDTO.self, data: sampleData)
        
        XCTAssertNil(decodedSampleData)
    }
    
    func test_NetworkManager_placeListRequest() throws {
        
        let expectation = XCTestExpectation()
        let decodedSampleData = ParsingManager.decodeData(type: SearchResultDTO.self, data: sampleData)
        
        NetworkManager.placeListRequest(about: "코드스쿼드") { (result) in
            if let data = result {
                let decodedData = ParsingManager.decodeData(type: SearchResultDTO.self, data: data)
                XCTAssertEqual(decodedData?.documents[0].id, decodedSampleData?.documents[0].id)
                XCTAssertEqual(decodedData?.documents[0].phone, decodedSampleData?.documents[0].phone)
                XCTAssertEqual(decodedData?.documents[0].x, decodedSampleData?.documents[0].x)
                XCTAssertEqual(decodedData?.documents[0].y, decodedSampleData?.documents[0].y)
            } else {
                XCTAssertNil(result)
            }
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 3.0)
    }
}
