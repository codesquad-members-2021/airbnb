//
//  PriceSlideControlViewModel.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/06/01.
//

import Foundation

class PriceSlideControlViewModel {
    public var maximumPrice: Float?
    public var minimumPrice: Float?
    
    init() {
        // for test
        self.maximumPrice = 1_000_000
        self.minimumPrice = 1_000
    }
    
}
