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
    private(set) var selectedDateIndexPaths: [IndexPath]
    
    init() {
        self.months = []
        self.selectedDateIndexPaths = []
    }
    
    func dateSelected() -> [Date?] {
        var dates = [Date?]()
        let orderedIndexPath = selectedDateIndexPaths.sorted()
        let startIndexPath = orderedIndexPath[0]
        let startDate = months[startIndexPath.section].days[startIndexPath.row].date
        dates.append(startDate)
        if orderedIndexPath.count == 2 {
            let endIndexPath = orderedIndexPath[1]
            let endDate = months[endIndexPath.section].days[endIndexPath.row].date
            dates.append(endDate)
        }
        return dates
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
    }
    
    func selectDateAt(indexPath: IndexPath) {
        selectedDateIndexPaths.append(indexPath)
        updateSelectStatus()
    }
    
    private func updateSelectStatus() {
        switch selectedDateIndexPaths.count {
        case 3:
            fillBetween(selectedDateIndexPaths[0], selectedDateIndexPaths[1], to: .none)
            fillBetween(selectedDateIndexPaths[1], selectedDateIndexPaths[2], to: .middle)
            fill(at: selectedDateIndexPaths[1], to: .edge)
            fill(at: selectedDateIndexPaths[2], to: .edge)
            selectedDateIndexPaths.removeFirst()
        case 1:
            fill(at: selectedDateIndexPaths[0], to: .edge)
        default:
            fillBetween(selectedDateIndexPaths[0], selectedDateIndexPaths[1], to: .middle)
            fill(at: selectedDateIndexPaths[0], to: .edge)
            fill(at: selectedDateIndexPaths[1], to: .edge)
        }
    }
    
    private func fillBetween(_ first: IndexPath,_ second: IndexPath, to status: Day.SelectStatus) {
        var fromIndex: IndexPath
        var toIndex: IndexPath
        if first.section == second.section {
            fromIndex = first.row <= second.row ? first : second
            toIndex = first.row > second.row ? first : second
            months[fromIndex.section].updateSelectStatus(fromIndex: fromIndex.row,
                                                         toIndex: toIndex.row,
                                                         to: status)
        } else {
            fromIndex = first.section <= second.section ? first : second
            toIndex = first.section > second.section ? first : second
            let startMonthIndex = fromIndex.section
            let endMonthIndex = toIndex.section
            months[startMonthIndex].updateSelectStatus(fromIndex: fromIndex.row,
                                                         toIndex: months[startMonthIndex].days.count - 1,
                                                         to: status)
            months[endMonthIndex].updateSelectStatus(fromIndex: 0,
                                                       toIndex: toIndex.row,
                                                       to: status)
            if endMonthIndex - startMonthIndex > 1 {
                (startMonthIndex + 1..<endMonthIndex).forEach { monthIndex in
                    let endIndex = months[monthIndex].days.count - 1
                    months[monthIndex].updateSelectStatus(fromIndex: 0, toIndex: endIndex, to: status)
                }
            }
        }
        
    }
    
    private func fill(at indexPath: IndexPath, to status: Day.SelectStatus) {
        months[indexPath.section].updateSelectStatus(fromIndex: indexPath.row,
                                                     toIndex: indexPath.row,
                                                     to: status)
        
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
