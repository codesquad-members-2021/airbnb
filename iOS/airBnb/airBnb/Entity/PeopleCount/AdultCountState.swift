//
//  adultCountState.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/28.
//

import Foundation

class AdultCountState: CountStatable {
    
    @Published var count: Int
    
    init() {
        count = 0
    }
    
    func increase() {
        count += 1
    }
    
    func decrease() {
        if isDecreaseEnable() {
            count -= 1
        }
    }
    
    func isDecreaseEnable() -> Bool {
        return count > 0
    }
}
