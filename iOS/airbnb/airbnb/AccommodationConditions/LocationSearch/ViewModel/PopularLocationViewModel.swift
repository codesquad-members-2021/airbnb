//
//  PopularLocationViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

final class PopularLocationViewModel: AnyResultHandleModel<[PopularLocation]> {
    
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
    
    enum ButtonTitle {
        static let cancel = "지우기"
        static let back = "위치 검색"
    }

    static let baseUrl = ""
    private var useCase: PopularLocationLoadUseCase
    
    init(useCase: PopularLocationLoadUseCase) {
        self.useCase = useCase
    }
    
    convenience override init() {
        let useCase = PopularLocationUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    override func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler) {
        super.bind(dataHandler: dataHandler, errorHandler: errorHandler)
        loadPopularLocations()
    }
    
    private func loadPopularLocations() {
        useCase.execute { [weak self] result in
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
            useCase.execute(with: imageUrl) { [weak self] cachePath in
                self?.popularLocations?[index].cachePath = cachePath
            }
        }
    }

}
