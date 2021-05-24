//
//  PopularLocationViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

final class PopularLocationViewModel: DataLoadViewModel {
    
    typealias DataType = [PopularLocation]
    private var dataHandler: DataHandler?
    private var errorHandler: ErrorHandler?
    
    private var popularLocations: [PopularLocation]? {
        didSet {
            guard let popularLocations = popularLocations else { return }
            dataHandler?(popularLocations)
        }
    }
    
    private var error: Error? {
        didSet {
            guard let error = error else { return }
            errorHandler?(error)
        }
    }
    
    private(set) var cancelButtonTitle = "지우기"
    private(set) var backButtonTitle = "위치 검색"
    private(set) var searchBarPlaceholder = "어디로 여행가세요?"
    static let baseUrl = ""
    private var useCase: PopularLocationCaseConfigurable
    
    init(useCase: PopularLocationCaseConfigurable) {
        self.useCase = useCase
    }
    
    convenience init() {
        let useCase = PopularLocationUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler) {
        self.dataHandler = dataHandler
        self.errorHandler = errorHandler
        loadPopularLocations()
    }
    
    private func loadPopularLocations() {
        useCase.loadPopularLocations { [weak self] result in
            do {
                let popularLocations = try result.get()
                self?.popularLocations = popularLocations
                let imageUrls = popularLocations.map{ $0.imagePath }
                self?.loadPopularLocationImages(from: imageUrls)
            } catch {
                self?.error = error
            }
        }
    }
    
    private func loadPopularLocationImages(from imageUrls: [String]) {
        imageUrls.enumerated().forEach { index, imageUrl in
            useCase.loadPopularLocationImage(from: imageUrl) { [weak self] cachePath in
                self?.popularLocations?[index].cachePath = cachePath
            }
        }
    }

}
