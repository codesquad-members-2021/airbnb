//
//  HomeViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

final class HomeViewModel: ImagePathLoadModel {
    
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
    
    enum ButtonTitle {
        static let back = "홈"
    }
    
    static let baseUrl = ""
    private var useCase: ImageLoadUseCase
    
    init(useCase: ImageLoadUseCase) {
        self.useCase = useCase
    }
    
    convenience init() {
        let useCase = HeroImageUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler) {
        self.dataHandler = dataHandler
        self.errorHandler = errorHandler
        loadHeroImage()
    }

    private func loadHeroImage() {
        useCase.execute { [weak self] result in
            do {
                let cacheUrl = try result.get()
                self?.heroImagePath = cacheUrl
            } catch {
                self?.error = error
            }
        }
    }
    
}
