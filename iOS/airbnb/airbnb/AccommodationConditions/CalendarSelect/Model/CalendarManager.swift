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
    }
    
    func findDate(of monthIndex: Int, _ dayIndex: Int) -> Date? {
        let targetMonth = months[monthIndex]
        let targetDate = targetMonth.date(at: dayIndex)
        return targetDate
    }
    
    func changeSingleDay(monthIndex: Int, rowIndex: Int, to status: SelectStatus) {
        let targetMonth = months[monthIndex]
        targetMonth.updateDayStatus(fromIndex: rowIndex, toIndex: rowIndex, to: status)
    }
    
    func changeMultipleDays(monthIndex: Int, fromRowIndex: Int? = nil, toRowIndex: Int? = nil, to status: SelectStatus) {
        let targetMonth = months[monthIndex]
        let fromRowIndex = fromRowIndex ?? 0
        let toRowIndex = toRowIndex ?? targetMonth.lastIndex()
        targetMonth.updateDayStatus(fromIndex: fromRowIndex, toIndex: toRowIndex, to: status)
    }
    
    func addMonths(by amount: Int) {
        (1...amount).forEach { _ in
            if let lastMonthDate = months.last?.lastDate(),
               let nextMonthDate = calendar.date(byAdding: .month, value: 1, to: lastMonthDate) {
                createMonth(startAt: nextMonthDate)
            } else {
                let today = Date()
                createMonth(startAt: today)
            }
        }
    }
    
    private func createMonth(startAt: Date) {
        guard let numberOfDays = calendar.range(of: .day, in: .month, for: startAt)?.count,
              let firstDay = calendar.date(from: calendar.dateComponents([.year, .month], from: startAt))
        else { return }
        let startingWeekday = calendar.component(.weekday, from: firstDay)
        let month = createDays(with: firstDay, numberOfDays, startingWeekday)
        months.append(month)
    }
    
    private func createDays(with firstDay: Date, _ numberOfDays: Int, _ startingWeekDay: Int) -> Month {
        let emptyDay = Day(date: nil, title: nil, timeStatus: .empty)
        var days = Array(repeating: emptyDay, count: startingWeekDay - 1)

        for i in 0..<numberOfDays {
            let date = calendar.date(byAdding: .day, value: i, to: firstDay) ?? Date()
            let title = DateFormatter.dateToString(format: DateFormat.day, date: date)
            let status = isFuture(date: date) ? Day.TimeStatus.future : Day.TimeStatus.past
            days.append(Day(date: date, title: title, timeStatus: status))
        }
        
        let title = DateFormatter.dateToString(format: DateFormat.monthYear, date: firstDay)
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
