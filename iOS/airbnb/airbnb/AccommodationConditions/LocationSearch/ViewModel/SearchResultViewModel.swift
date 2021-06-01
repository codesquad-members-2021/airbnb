//
//  SearchResultViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

final class SearchResultViewModel: AnyResultHandleModel<[Location]> {
    
    private var locations: [Location]? {
        didSet {
            guard let locations = locations else { return }
            dataHandler?(locations)
        }
    }
    
    private var error: Error? {
        didSet {
            guard let error = error else { return }
            errorHandler?(error)
        }
    }
    
    static let baseUrl = ""
    private var useCase: SearchResultFetchUseCase
    
    init(useCase: SearchResultFetchUseCase) {
        self.useCase = useCase
    }
    
    convenience override init() {
        let useCase = SearchResultUseCase(url: SearchResultViewModel.baseUrl)
        self.init(useCase: useCase)
    }

}

extension SearchResultViewModel: SearchResultUpdateModel {
    func newData(with input: String) {
        useCase.execute(for: input) { [weak self] result in
            do {
                let locations = try result.get()
                self?.locations = locations
            } catch {
                self?.error = error
            }
        }
    }
}
