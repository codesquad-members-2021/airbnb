//
//  SearchResultViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

final class SearchResultViewModel: SearchResultUpdateModel {
    
    private var dataHandler: DataHandler?
    private var errorHandler: ErrorHandler?
    
    private var searchResults: [Location]? {
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
    private var useCase: SearchResultFetchUseCase
    
    init(useCase: SearchResultFetchUseCase) {
        self.useCase = useCase
    }
    
    convenience init() {
        let useCase = SearchResultUseCase(url: SearchResultViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler) {
        self.dataHandler = dataHandler
        self.errorHandler = errorHandler
    }
    
    func newData(with input: String) {
        useCase.execute(for: input) { [weak self] result in
            do {
                let searchResults = try result.get()
                self?.searchResults = searchResults
            } catch {
                self?.error = error
            }
        }
    }

}
