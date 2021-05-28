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
        if isIncreaseEnabled() {
            count += 1
        }
    }
    
    func decrease() {
        if isDecreaseEnabled() {
            count -= 1
        }
    }
    
    private func isDecreaseEnabled() -> Bool {
        return count > 0
    }
    
    private func isIncreaseEnabled() -> Bool {
        return count < 8
    }
    
    func isNotZero() -> Bool {
        return count > 0
    }
}
