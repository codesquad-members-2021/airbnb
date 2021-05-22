//
//  CalendarHelper.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import Foundation

class CalendarHelper {
    private static let calendar = Calendar.current
    private static let dateFormatter = DateFormatter()
    
    static func makeCalenderDate() -> [String:[String]] {
        var dates: [String:[String]] = [:]
        (0..<12).forEach { (value) in
            let month = calendar.date(byAdding: .month, value: value, to: Date()) ?? Date()
            let days = makeDays(date: month)
            let months = dateFormatter.convertCalenderHeaderString(date: month)
            dates[months] = days
        }
        return dates
    }
    
    static func makeDays(date: Date) -> [String] {
        var days: [String] = []
        let daysInMonth = getDaysInMonth(date: date)
        let firstDayOfMonth = getFirstOfMonth(date: date)
        let startingSpaces = getWeekDay(date: firstDayOfMonth)
        (1...daysInMonth + startingSpaces).forEach { (count) in
            checkFirstDayRange(day: count) ?
                days.append("") :
                days.append(convertString(v:count - startingSpaces))
        }
        func convertString(v: Int) -> String {
            let date = calendar.date(byAdding: .day, value: v - 1, to: firstDayOfMonth) ?? Date()
            return DateFormatter().convertCalenderDayString(date: date)
        }
        
        func checkFirstDayRange(day: Int) -> Bool {
            return day <= startingSpaces
        }
        return days
    }
    
    static func getMonth(index: Int) -> String {
        let month = calendar.date(byAdding: .month, value: index, to: Date()) ?? Date()
        return dateFormatter.convertCalenderHeaderString(date: month)
    }
    
    static func getDaysInMonth(date: Date) -> Int {
        let range = calendar.range(of: .day, in: .month, for: date)!
        return range.count
    }
    
    static func getFirstOfMonth(date: Date) -> Date {
        let components = calendar.dateComponents([.year, .month], from: date)
        return calendar.date(from: components)!
    }
    
    static func getWeekDay(date: Date) -> Int {
        let components = calendar.dateComponents([.weekday], from: date)
        return components.weekday! - 1
    }
}

extension DateFormatter {
    func convertCalenderHeaderString(date: Date) -> String {
        self.dateFormat = "yyyy년 M월"
        return self.string(from: date)
    }
    
    func convertCalenderDayString(date: Date) -> String {
        self.dateFormat = "yyyy-M-d"
        return self.string(from: date)
    }
}
