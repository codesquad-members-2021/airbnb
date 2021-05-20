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
    
    init(useCase: NewSearchCaseConfigurable) {
        self.useCase = useCase
    }
    
    convenience init() {
        let useCase = NewSearchUseCase(url: SearchResultViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    func searchResults(for keyword: String,
                       completionHandler: @escaping (Result<[LocationSearchResult], CustomError>) -> Void) {
        useCase.search(for: keyword) { result in
            completionHandler(result)
        }
    }
    
}
