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
    
    static func makeCalenderDate() -> [String:[Date?]] {
        var dates: [String:[Date?]] = [:]
        (0..<12).forEach { (value) in
            let month = calendar.date(byAdding: .month, value: value, to: Date()) ?? Date()
            let days = makeDays(date: month)
            let months = dateFormatter.convertCalenderHeaderString(date: month)
            dates[months] = days
        }
        return dates
    }
    
    static func makeDays(date: Date) -> [Date?] {
        var days: [Date?] = []
        let dayCount = daysInMonth(date: date)
        let firstDay = firstDayOfMonth(date: date)
        let startingSpaces = weekDay(date: firstDay)
        (1...dayCount + startingSpaces).forEach { (count) in
            checkFirstDayRange(day: count) ?
                days.append(nil) :
                days.append(createDay(with: count - startingSpaces))
        }
        func createDay(with count: Int) -> Date {
            return calendar.date(byAdding: .day, value: count - 1, to: firstDay) ?? Date()
        }
        
        func checkFirstDayRange(day: Int) -> Bool {
            return day <= startingSpaces
        }
        return days
    }
    
    static func month(index: Int) -> String {
        let month = calendar.date(byAdding: .month, value: index, to: Date()) ?? Date()
        return dateFormatter.convertCalenderHeaderString(date: month)
    }
    
    static func daysInMonth(date: Date) -> Int {
        let range = calendar.range(of: .day, in: .month, for: date)!
        return range.count
    }
    
    static func firstDayOfMonth(date: Date) -> Date {
        let components = calendar.dateComponents([.year, .month], from: date)
        return calendar.date(from: components) ?? Date()
    }
    
    static func weekDay(date: Date) -> Int {
        let components = calendar.dateComponents([.weekday], from: date)
        return components.weekday! - 1
    }
}
