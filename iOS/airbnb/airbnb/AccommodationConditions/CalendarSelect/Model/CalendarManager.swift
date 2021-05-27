//
//  CalendarManager.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class CalendarManager {
    
    private let calendar = Calendar(identifier: .gregorian)
    private(set) var months: [Month]
    
    init() {
        self.months = []
        fillMonths(by: 6)
    }
    
    func fillMonths(by count: Int) {
        (1...count).forEach { _ in
            if let lastMonthDate = months.last?.days.last?.date,
               let nextMonthDate = calendar.date(byAdding: .month, value: 1, to: lastMonthDate) {
                createMonth(startAt: nextMonthDate)
            } else {
                let today = Date()
                createMonth(startAt: today)
            }
        }
        //리필됐다고 노티보내야함
    }
    
    private func createMonth(startAt: Date) {
        guard let numberOfDays = calendar.range(of: .day, in: .month, for: startAt)?.count,
              let firstDay = calendar.date(from: calendar.dateComponents([.year, .month], from: startAt))
        else { return }
        let startingWeekday = calendar.component(.weekday, from: firstDay)
        let month = createDays(with: firstDay, numberOfDays, startingWeekday)
        months.append(month)
    }
    
    enum DateFormat {
        static let month = "M월 YYYY"
        static let day = "d"
    }
    
    private func createDays(with firstDay: Date, _ numberOfDays: Int, _ startingWeekDay: Int) -> Month {
        let emptyDay = Day(date: nil, title: nil, status: .empty)
        var days = Array(repeating: emptyDay, count: startingWeekDay - 1)

        for i in 0..<numberOfDays {
            let date = calendar.date(byAdding: .day, value: i, to: firstDay) ?? Date()
            let title = DateFormatter.dateToString(format: DateFormat.day, date: date)
            let status = isFuture(date: date) ? Day.Status.future : Day.Status.past
            days.append(Day(date: date, title: title, status: status))
        }
        
        let title = DateFormatter.dateToString(format: DateFormat.month, date: firstDay)
        return Month(title: title, days: days)
    }
    
    private func isFuture(date: Date, compareTo: Date = Date()) -> Bool {
        return date > compareTo || isSameDay(date: date)
    }
    
    private func isSameDay(date: Date, compareTo: Date = Date()) -> Bool {
        let day = calendar.dateComponents([.day], from: date).day!
        let dayToCompare = calendar.dateComponents([.day], from: compareTo).day!
        return day == dayToCompare
    }

}

extension DateFormatter {
    static func dateToString(format: String, date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}
