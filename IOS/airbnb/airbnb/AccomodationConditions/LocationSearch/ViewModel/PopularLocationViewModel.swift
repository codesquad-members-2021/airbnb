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
        let tempLocations = Array(repeating: PopularLocation(), count: 10)
        let useCase = PopularLocationUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase, tempLocations: tempLocations)
    }
    
    func popularLocations(completionHandler: @escaping ([PopularLocation]) -> Void) {
        useCase.loadPopularLocations { result in
            do {
                let popularLocaions = try result.get()
                completionHandler(popularLocaions)
            } catch {
                print(error) //에러 보내야함
                completionHandler(self.tempLocations)
            }
        }
    }

}
