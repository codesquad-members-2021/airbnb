//
//  BabyCountState.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/28.
//

import Foundation

class BabyCountState: ChildProtocol {
    
    @Published var count: Int
    
    var isDecreaseEnabled: Bool {
        get {
            return count > 0
        }
    }
    
    var isIncreaseEnabled: Bool {
        get {
            return count < 8
        }
    }
    
    init() {
        count = 0
    }
    
    func increase() {
        if isIncreaseEnabled {
            count += 1
        }
    }
    
    func decrease() {
        if isDecreaseEnabled {
            count -= 1
        }
    }
    
    func isNotZero() -> Bool {
        return count > 0
    }
}
