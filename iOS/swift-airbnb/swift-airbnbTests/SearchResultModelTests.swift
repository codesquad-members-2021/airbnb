//
//  SearchResultModelTests.swift
//  swift-airbnbTests
//
//  Created by user on 2021/05/28.
//

import XCTest

class SearchResultModelTests: XCTestCase {

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

    func test_SearchResultModel() throws {
        let data = ParsingManager.decodeData(type: SearchResultDTO.self, data: sampleData)
        
        var searchResultModel = SearchResultModel()
        searchResultModel.updateDestinations(with: data!.documents)
        
        XCTAssertEqual(searchResultModel.searchResultDestinations[0].addressName, data?.documents[0].addressName)
        XCTAssertEqual(searchResultModel.searchResultDestinations[0].placeName, data?.documents[0].placeName)
        XCTAssertEqual(searchResultModel.searchResultDestinations[0].x, data?.documents[0].x)
        XCTAssertEqual(searchResultModel.searchResultDestinations[0].y, data?.documents[0].y)
    }
}
