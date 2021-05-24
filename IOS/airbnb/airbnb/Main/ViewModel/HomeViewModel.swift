//
//  HomeViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

final class HomeViewModel: DataLoadViewModel {
    
    typealias DataType = String
    private var dataHandler: DataHandler?
    private var errorHandler: ErrorHandler?
    
    private var heroImagePath: String? {
        didSet {
            guard let heroImagePath = heroImagePath else { return }
            dataHandler?(heroImagePath)
        }
    }
    
    private var error: Error? {
        didSet {
            guard let error = error else { return }
            errorHandler?(error)
        }
    }
    
    private(set) var backButtonTitle = "홈"
    private(set) var searchBarPlaceholder = "어디로 여행가세요?"
    static let baseUrl = ""
    private var useCase: TurnOnCaseConfigurable
    
    init(useCase: TurnOnCaseConfigurable) {
        self.useCase = useCase
    }
    
    convenience init() {
        let useCase = TurnOnUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler) {
        self.dataHandler = dataHandler
        self.errorHandler = errorHandler
        loadHeroImage()
    }

    private func loadHeroImage() {
        useCase.loadHeroImage { [weak self] result in
            do {
                let cacheUrl = try result.get()
                self?.heroImagePath = cacheUrl
            } catch {
                self?.error = error
            }
        }
    }
    
}
