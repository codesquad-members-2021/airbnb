//
//  HomeViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

final class HomeViewModel: AnyResultHandleModel<String> {
    
    private var cacheUrl: String? {
        didSet {
            guard let cacheUrl = cacheUrl else { return }
            dataHandler?(cacheUrl)
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
    
    convenience override init() {
        let useCase = HeroImageUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    override func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler) {
        super.bind(dataHandler: dataHandler, errorHandler: errorHandler)
        loadHeroImage()
    }

    private func loadHeroImage() {
        useCase.execute { [weak self] result in
            do {
                let cacheUrl = try result.get()
                self?.cacheUrl = cacheUrl
            } catch {
                self?.error = error
            }
        }
    }
    
}
