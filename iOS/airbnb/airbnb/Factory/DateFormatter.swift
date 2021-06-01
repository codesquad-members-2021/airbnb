//
//  DateFormatter.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

enum DateFormat {
    static let monthYear = "M월 YYYY"
    static let monthDay = "M월 d일"
    static let day = "d"
}

extension DateFormatter {
    static func dateToString(format: String, date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}
