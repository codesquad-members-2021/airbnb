//
//  SearchResultViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

class SearchResultViewModel {
    
    static let baseUrl = ""
    private var useCase: NewSearchUseCase
    private let tempResults: [LocationSearchResult]
    
    init(useCase: NewSearchUseCase, tempResults: [LocationSearchResult]) {
        self.tempResults = tempResults
        self.useCase = useCase
    }
    
    convenience init() {
        let tempResults = Array(repeating: LocationSearchResult(), count: 10)
        let useCase = NewSearchUseCase(url: SearchResultViewModel.baseUrl)
        self.init(useCase: useCase, tempResults: tempResults)
    }
    
    func searchResults(completionHandler: @escaping ([LocationSearchResult]) -> Void) {
        useCase.execute { result in
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
