//
//  PopularLocationViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

class PopularLocationViewModel {
    
    static let baseUrl = ""
    private var useCase: PopularLocationUseCase
    private let tempLocations: [PopularLocation]
    
    init(useCase: PopularLocationUseCase, tempLocations: [PopularLocation]) {
        self.tempLocations = tempLocations
        self.useCase = useCase
    }
    
    convenience init() {
        let tempLocations = [PopularLocation(name: "서울", distanceFromHere: "걸어서 1분 거리", imagePath: ""),
                             PopularLocation(name: "샌프란시스코", distanceFromHere: "뛰어서 1분 거리", imagePath: ""),
                             PopularLocation(name: "남극", distanceFromHere: "차로 1분 거리", imagePath: "")]
        let useCase = PopularLocationUseCase(url: PopularLocationViewModel.baseUrl)
        self.init(useCase: useCase, tempLocations: tempLocations)
    }
    
    func popularLocations(completionHandler: @escaping ([PopularLocation]) -> Void) {
        useCase.execute { result in
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
