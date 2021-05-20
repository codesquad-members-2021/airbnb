//
//  SearchResultViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

class SearchResultViewModel: SearchResultConfigurable {
    
    static let baseUrl = ""
    private var useCase: NewSearchCaseConfigurable
    private let tempResults: [LocationSearchResult]
    
    init(useCase: NewSearchCaseConfigurable, tempResults: [LocationSearchResult]) {
        self.tempResults = tempResults
        self.useCase = useCase
    }
    
    convenience init() {
        let tempResults = Array(repeating: LocationSearchResult(), count: 10)
        let useCase = NewSearchUseCase(url: SearchResultViewModel.baseUrl)
        self.init(useCase: useCase, tempResults: tempResults)
    }
    
    func searchResults(for keyword: String,
                       completionHandler: @escaping ([LocationSearchResult]) -> Void) {
        useCase.search(for: keyword) { result in
            do {
                let popularLocaions = try result.get()
                completionHandler(popularLocaions)
            } catch {
                print(error) //에러 보내야함
                completionHandler(self.tempResults)
            }
        }
    }
    
}
