//
//  PopularLocationViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

final class PopularLocationViewModel: PopularLocationConfigurable {
    
    static let baseUrl = ""
    private var useCase: PopularLocationCaseConfigurable
    
    init(useCase: PopularLocationCaseConfigurable) {
        self.useCase = useCase
    }
    
    convenience init() {
        let useCase = PopularLocationUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    func popularLocations(completionHandler: @escaping (Result<[PopularLocation], CustomError>) -> Void) {
        useCase.loadPopularLocations { result in
            completionHandler(result)
        }
    }
    
    func popularLocationImage(from imageUrl: String, completionHandler: @escaping (String) -> Void) {
        useCase.loadPopularLocationImage(from: imageUrl) { cachePath in
            completionHandler(cachePath)
        }
    }

}
