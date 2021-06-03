//
//  CounterState.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import Foundation
import Combine

class CounterState : ObservableObject {
    private(set) var count : Int {
        didSet {
            objectWillChange.send()
        }
    }
    
    init() {
        count = 0
    }
    
    func increase() {
        self.count += 1
    }
    
    func decrease() {
        self.count -= 1
    }
}
