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
        count += 1
    }
    
    func decrease() {
        count -= 1
    }
    
}
