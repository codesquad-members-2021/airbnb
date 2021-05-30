//
//  CalendarViewModel.swift
//  Airbnb
//
//  Created by Lia on 2021/05/28.
//

import Foundation

class CalendarViewModel {
    
    private var checkInOut: [Date]
    private var count: Int
    
    init(checkInOut: [Date] = []) {
        self.checkInOut = checkInOut
        self.count = 0
    }
    
    
    func select(date: Date) {
        if count < 2 {
            checkInOut.append(date)
            count += 1
        } else {
            checkInOut.append(date)
            checkInOut.removeFirst()
        }
    }
    
    func unselect(date: Date) {
        if checkInOut.first == date {
            checkInOut.removeFirst()
        } else {
            checkInOut.removeLast()
        }
        count -= 1
    }
    
    func intervalDates() -> [Date] {
        var dates = [Date]()
        var interval = checkInOut.min()!
        var index = 1.0
        
        while interval < checkInOut.max()! {
            interval = Date(timeInterval: 86400 * index, since: checkInOut.min()!)
            dates.append(interval)
            index += 1
        }
        if index != 1 { dates.removeLast() }
        return dates
    }
    
    func figureSelectedType(date: Date?) -> SelectedType {
        guard let date = date else {
            return .nothing
        }
        if date < Date.init(timeIntervalSinceNow: -8640) {
            print(date, Date.init(timeIntervalSinceNow: -8640))
            return .outDated
        } else if checkInOut.count == 0 {
            return .normal
        } else if checkInOut.count == 1 && checkInOut.contains(date) {
            return .one
        } else if date == checkInOut.min()! {
            return .checkIn
        } else if date == checkInOut.max()! {
            return .checkOut
        } else if intervalDates().contains(date) {
            return .interval
        } else {
            return .normal
        }
    }
    
}
