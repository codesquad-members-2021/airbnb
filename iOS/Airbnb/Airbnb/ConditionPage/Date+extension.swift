//
//  Date+extension.swift
//  Airbnb
//
//  Created by Lia on 2021/05/27.
//

import Foundation

extension Date {
    var year: Int {
        let calendar = Calendar.current
        return calendar.component(.year, from: self)
    }
    var month: Int {
        let calendar = Calendar.current
        return calendar.component(.month, from: self)
    }
    var weekday: Int {
        let calendar = Calendar.current
        return calendar.component(.weekday, from: self)
    }
    var day: Int {
        let calendar = Calendar.current
        return calendar.component(.day, from: self)
    }
    var description: String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd"
        return dateFormat.string(for: self) ?? ""
    }
}
