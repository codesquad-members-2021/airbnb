//
//  NewSearchUseCase.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

final class SearchResultUseCase: SearchResultFetchUseCase {
    
    enum EndPoint {
        static let searchResult = "/아직없음"
    }
    
    private var networkManager: NetworkManagable
    
    init(networkManager: NetworkManagable) {
        self.networkManager = networkManager
    }
    
    convenience init(url: String) {
        let fakeData = FakeData.FakeSearchResults
        self.init(networkManager: FakeNetworkManager(fakeData: fakeData))
    }
    
    func execute(for keyword: String,
                completionHandler: @escaping (Result<[LocationSearchResult], NetworkError>) -> Void) {
        let endPoint = EndPoint.searchResult + "\(keyword)"
        networkManager.get(decodingType: [LocationSearchResult].self, endPoint: endPoint) { dataResponse in
            completionHandler(dataResponse)
        }
    }
    
}
