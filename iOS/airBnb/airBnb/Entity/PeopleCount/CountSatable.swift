//
//  CountSatable.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/28.
//

import Foundation

protocol CountStatable {
    var isDecreaseEnabled: Bool { get }
    var isIncreaseEnabled: Bool { get }
    func increase()
    func decrease()
}

protocol AdultProtocol: CountStatable {
    func isZero() -> Bool
}

protocol ChildProtocol: CountStatable {
    func isNotZero() -> Bool
}
