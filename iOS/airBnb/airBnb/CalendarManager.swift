//
//  CalendarManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import Foundation
import Combine

struct SequenceDates {
    var start,end: Date?
    
    func convertDateString() -> String {
        guard let start = start else {
            return ""
        }
        guard let end = end else {
            return start.convertString()
        }
        return start.convertString() + " - " + end.convertString()
    }
    
    mutating func selectDay(with day: Date) {
        let selectedDate = day
        
        if start == nil && end == nil {
            start = selectedDate
            end = nil
        } else if let _ = start, let _ = end {
            start = nil
            end = nil
        } else if let s = start, end == nil && start == selectedDate {
            start = s
            end = start
        } else if let s = start, end == nil && start != selectedDate {
            if selectedDate < s {
                start = selectedDate
                end = start
            } else {
                start = s
                end = selectedDate
            }
        } else {
            start = nil
            end = nil
        }
    }
    
    mutating func clear() {
        start = nil
        end = nil
    }
}

class CalendarManager {
    private(set) var dates: [String:[Date?]] = [:]
    
    enum NotiName {
        static let selectDate = Notification.Name("selectDate")
    }
    
    init() {
        sequenceDates = .init(start: nil, end: nil)
        makeCalendarDate()
    }
    
    func makeCalendarDate() {
        dates = CalendarHelper.makeCalenderDate()
    }
}
