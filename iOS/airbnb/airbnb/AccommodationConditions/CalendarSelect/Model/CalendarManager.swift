//
//  CalendarManager.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

final class CalendarManager {
    
    private let calendar = Calendar(identifier: .gregorian)
    private(set) var months: [Month]
    
    init(months: [Month] = []) {
        self.months = months
    }
    
    func findDate(of calendarCoordinate: CalendarCoordinate) -> Date? {
        let targetMonth = months[calendarCoordinate.month]
        let targetDate = targetMonth.date(at: calendarCoordinate.day)
        return targetDate
    }
    
    func changeSingleDay(at coord: CalendarCoordinate, to status: SelectStatus) {
        let targetMonth = months[coord.month]
        targetMonth.updateDayStatus(fromIndex: coord.day, to: status)
    }
    
    func changeMultipleDays(fromCoord: CalendarCoordinate, toCoord: CalendarCoordinate, to status: SelectStatus) {
        let relationship = CalendarCoordinate.relationship(between: fromCoord, toCoord)
        switch relationship {
        case .same:
            changeMonth(at: fromCoord.month, fromIndex: fromCoord.day, toIndex: toCoord.day, to: status)
        case .away:
            (fromCoord.month + 1..<toCoord.month).forEach { monthIndex in
                changeMonth(at: monthIndex, to: status)
            }
            fallthrough
        case .continuous:
            changeMonth(at: fromCoord.month, fromIndex: fromCoord.day, to: status)
            changeMonth(at: toCoord.month, toIndex: toCoord.day, to: status)
        }
    }
    
    private func changeMonth(at index: Int, fromIndex: Int? = nil, toIndex: Int? = nil, to status: SelectStatus) {
        let targetMonth = months[index]
        let fromIndex = fromIndex ?? 0
        let toIndex = toIndex ?? targetMonth.lastIndex()
        targetMonth.updateDayStatus(fromIndex: fromIndex, toIndex: toIndex, to: status)
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
        let day = calendar.dateComponents([.day], from: date).day
        let dayToCompare = calendar.dateComponents([.day], from: compareTo).day
        return day == dayToCompare
    }
    
}
