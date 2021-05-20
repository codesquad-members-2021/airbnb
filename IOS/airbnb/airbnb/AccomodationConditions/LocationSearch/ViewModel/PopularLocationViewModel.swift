//
//  PopularLocationViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

class PopularLocationViewModel: PopularLocationConfigurable {
    
    static let baseUrl = ""
    private var useCase: PopularLocationCaseConfigurable
    private let tempLocations: [PopularLocation]

    init(useCase: PopularLocationCaseConfigurable, tempLocations: [PopularLocation]) {
        self.tempLocations = tempLocations
        self.useCase = useCase
    }
    
    convenience init() {
        let tempLocations = [PopularLocation()]
        let useCase = PopularLocationUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase, tempLocations: tempLocations)
    }
    
    func popularLocations(completionHandler: @escaping (Result<[PopularLocation], CustomError>) -> Void) {
        useCase.loadPopularLocations { result in
            completionHandler(result)
        }
    }

}
