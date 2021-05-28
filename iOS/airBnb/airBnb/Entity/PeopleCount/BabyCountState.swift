//
//  BabyCountState.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/28.
//

import Foundation

class BabyCountState: CountStatable {
    
    @Published var count: Int
    
    init() {
        count = 0
    }
    
    func increase() {
        if isIncreaseEnable() {
            count += 1
        }
    }
    
    func decrease() {
        if isDecreaseEnable() {
            count -= 1
        }
    }
    
    private func isDecreaseEnable() -> Bool {
        return count > 0
    }
    
    private func isIncreaseEnable() -> Bool {
        return count < 9
    }
}
