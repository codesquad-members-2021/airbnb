//
//  File.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/25.
//

import Foundation

extension Date {
    func convertString() -> String {
        return DateFormatter().convertMonthDayString(date: self)
    }
}
