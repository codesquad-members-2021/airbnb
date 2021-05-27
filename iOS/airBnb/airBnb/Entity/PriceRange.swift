//
//  PriceRange.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/27.
//

import UIKit

struct PriceRange {
    private var minimunValue: CGFloat? = nil
    private var maximumValue: CGFloat? = nil
    private let fixedMinimunValue: CGFloat = 11000
    private let fixedMaximumValue: CGFloat = 1000000
    
    func noticeChanged() -> Bool {
        return minimunValue != fixedMinimunValue && maximumValue != fixedMaximumValue
    }
    
    mutating func change(from slider: priceSlider) {
        self.minimunValue = slider.lowerValue
        self.maximumValue = slider.upperValue
    }
    
    mutating func reset() {
        self.minimunValue = nil
        self.maximumValue = nil
    }
    
    func show() -> String {
        guard let min = minimunValue, let max = maximumValue else {
            return ""
        }
        return min.converNumberFormatter() + " - " +
            max.converNumberFormatter()
    }
}
