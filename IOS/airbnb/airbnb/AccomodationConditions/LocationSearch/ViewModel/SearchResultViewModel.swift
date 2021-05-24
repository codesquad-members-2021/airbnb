//
//  SearchResultViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

final class SearchResultViewModel: InputDealingViewModel {
    
    typealias InputType = String
    typealias DataType = [LocationSearchResult]
    private var dataHandler: DataHandler?
    private var errorHandler: ErrorHandler?
    
    private var searchResults: [LocationSearchResult]? {
        didSet {
            guard let searchResults = searchResults else { return }
            dataHandler?(searchResults)
        }
    }
    
    private var error: Error? {
        didSet {
            guard let error = error else { return }
            errorHandler?(error)
        }
    }
    
    static let baseUrl = ""
    private var useCase: NewSearchCaseConfigurable
    
    init(useCase: NewSearchCaseConfigurable) {
        self.useCase = useCase
    }
    
    convenience init() {
        let useCase = NewSearchUseCase(url: SearchResultViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler) {
        self.dataHandler = dataHandler
        self.errorHandler = errorHandler
    }
    
    func newData(with input: String) {
        useCase.search(for: input) { [weak self] result in
            do {
                let searchResults = try result.get()
                self?.searchResults = searchResults
            } catch {
                self?.error = error
            }
        }
    }

}
