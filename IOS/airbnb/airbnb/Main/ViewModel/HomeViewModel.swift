//
//  HomeViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

class HomeViewModel: HomeConfigurable {
    
    static let baseUrl = ""
    private var useCase: TurnOnCaseConfigurable
    
    init(useCase: TurnOnCaseConfigurable) {
        self.useCase = useCase
    }
    
    convenience init() {
        let useCase = TurnOnUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase)
    }
    
    func heroImage(completionHandler: @escaping (Result<String, CustomError>) -> Void) {
        useCase.loadHeroImage { result in
            completionHandler(result)
        }
    }
    
}
