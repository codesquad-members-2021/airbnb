//
//  DateSelectionManager.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class DateSelectionManager {
    
    private var calendarManager: CalendarManager
    private var selectedDateIndexPaths: [IndexPath]
    
    init() {
        self.calendarManager = CalendarManager()
        self.selectedDateIndexPaths = []
    }
    
    func allMonths() -> [Month] {
        return calendarManager.months
    }
    
    func loadMoreMonths(by amount: Int) {
        calendarManager.addMonths(by: amount)
    }
    
    func selectedDates() -> [Date?] {
        guard !selectedDateIndexPaths.isEmpty else { return [nil] }
        
        let orderedIndexPath = selectedDateIndexPaths.sorted()
        
        let startIndexPath = orderedIndexPath[0]
        let startMonthIndex = startIndexPath.section
        let startDayIndex = startIndexPath.row
        let startDate = calendarManager.findDate(of: startMonthIndex, startDayIndex)
        
        var dates = [startDate]
        
        if orderedIndexPath.count == 2 {
            let endIndexPath = orderedIndexPath[1]
            let endMonthIndex = endIndexPath.section
            let endDayIndex = endIndexPath.row
            let endDate = calendarManager.findDate(of: endMonthIndex, endDayIndex)
            dates.append(endDate)
        }
        return dates
    }
    
    func newDateSelected(at indexPath: IndexPath) {
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
        case 2:
            fillBetween(selectedDateIndexPaths[0], selectedDateIndexPaths[1], to: .middle)
            fill(at: selectedDateIndexPaths[0], to: .edge)
            fill(at: selectedDateIndexPaths[1], to: .edge)
        case 1:
            fill(at: selectedDateIndexPaths[0], to: .edge)
        default:
            assert(false)
        }
    }
    
    private func fillBetween(_ first: IndexPath,_ second: IndexPath, to status: SelectStatus) {
        var fromIndex: IndexPath
        var toIndex: IndexPath
        
        if first.section == second.section {
            fromIndex = first.row <= second.row ? first : second
            toIndex = first.row > second.row ? first : second
            
            let monthIndex = fromIndex.section
            let fromRowIndex = fromIndex.row, toRowIndex = toIndex.row
            calendarManager.changeMultipleDays(monthIndex: monthIndex,
                                             fromRowIndex: fromRowIndex, toRowIndex: toRowIndex, to: status)
        } else {
            fromIndex = first.section <= second.section ? first : second
            toIndex = first.section > second.section ? first : second
            
            let startMonthIndex = fromIndex.section, startMonthFromIndex = fromIndex.row
            calendarManager.changeMultipleDays(monthIndex: startMonthIndex, fromRowIndex: startMonthFromIndex, to: status)
            
            let endMonthIndex = toIndex.section, endMonthToIndex = toIndex.row
            calendarManager.changeMultipleDays(monthIndex: endMonthIndex, toRowIndex: endMonthToIndex, to: status)
            
            if endMonthIndex - startMonthIndex > 1 {
                (startMonthIndex + 1..<endMonthIndex).forEach { monthIndex in
                    calendarManager.changeMultipleDays(monthIndex: monthIndex, to: status)
                }
            }
        }
    }
    
    private func fill(at indexPath: IndexPath, to status: SelectStatus) {
        let monthIndex = indexPath.section
        let rowIndex = indexPath.row
        calendarManager.changeSingleDay(monthIndex: monthIndex, rowIndex: rowIndex, to: status)
    }
    
}
