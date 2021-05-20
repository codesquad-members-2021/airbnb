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
        let tempResults = [LocationSearchResult()]
        let useCase = NewSearchUseCase(url: SearchResultViewModel.baseUrl)
        self.init(useCase: useCase, tempResults: tempResults)
    }
    
    func searchResults(for keyword: String,
                       completionHandler: @escaping (Result<[LocationSearchResult], CustomError>) -> Void) {
        useCase.search(for: keyword) { result in
            completionHandler(result)
        }
    }
    
}
