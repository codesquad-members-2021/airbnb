//
//  DateSelectionManager.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

final class DateSelectionManager {
    
    private var calendarManager: CalendarManager
    private var selectedCoords: [CalendarCoordinate]
    
    init(calendarManager: CalendarManager = CalendarManager(), selectedCoords: [CalendarCoordinate] = []) {
        self.calendarManager = calendarManager
        self.selectedCoords = selectedCoords
    }
    
    func allMonths() -> [Month] {
        return calendarManager.months
    }
    
    func loadMoreMonths(by amount: Int) {
        calendarManager.addMonths(by: amount)
    }
    
    func selectedDates() -> [Date?] {
        let dates = selectedCoords.map {
            calendarManager.findDate(of: $0)
        }
        return dates
    }

    func newDateSelected(at calendarCoordinate: CalendarCoordinate) {
        selectedCoords.append(calendarCoordinate)
        updateSelectStatus()
    }
    
    private func updateSelectStatus() {
        switch selectedCoords.count {
        case 3:
            fillBetween(selectedCoords[0], selectedCoords[1], to: .none)
            fillBetween(selectedCoords[1], selectedCoords[2], to: .middle)
            fill(at: selectedCoords[1], to: .edge)
            fill(at: selectedCoords[2], to: .edge)
            selectedCoords.removeFirst()
        case 2:
            fillBetween(selectedCoords[0], selectedCoords[1], to: .middle)
            fill(at: selectedCoords[0], to: .edge)
            fill(at: selectedCoords[1], to: .edge)
        case 1:
            fill(at: selectedCoords[0], to: .edge)
        default:
            assert(false)
        }
    }
    
    private func fillBetween(_ first: CalendarCoordinate,_ second: CalendarCoordinate, to status: SelectStatus) {
        let fromCoord = first <= second ? first : second
        let toCoord = first > second ? first : second
        calendarManager.changeMultipleDays(fromCoord: fromCoord, toCoord: toCoord, to: status)
    }
    
    private func fill(at calendarCoordinate: CalendarCoordinate, to status: SelectStatus) {
        calendarManager.changeSingleDay(at: calendarCoordinate, to: status)
    }
    
    func clearAll() {
        switch selectedCoords.count {
        case 2:
            fillBetween(selectedCoords[0], selectedCoords[1], to: .none)
        case 1:
            fill(at: selectedCoords[0], to: .none)
        default:
            assert(false)
        }
        selectedCoords.removeAll()
    }
    
}
