//
//  CalendarManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import Foundation

struct SequenceDates {
    var start,end: Date?
}

class CalendarManager {
    private(set) var dates: [String:[Date?]] = [:]
    private(set) var sequenceDates: SequenceDates
    
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
    
    func selectDay(with day: Date) {
        let selectedDate = day
        
        if sequenceDates.start == nil && sequenceDates.end == nil {
            sequenceDates.start = selectedDate
            sequenceDates.end = nil
        } else if let _ = sequenceDates.start, let _ = sequenceDates.end {
            sequenceDates.start = nil
            sequenceDates.end = nil
        } else if let start = sequenceDates.start, sequenceDates.end == nil && start == selectedDate {
            sequenceDates.start = start
            sequenceDates.end = start
        } else if let start = sequenceDates.start, sequenceDates.end == nil && start != selectedDate {
            if selectedDate < start {
                sequenceDates.start = selectedDate
                sequenceDates.end = start
            } else {
                sequenceDates.start = start
                sequenceDates.end = selectedDate
            }
        } else {
            sequenceDates.start = nil
            sequenceDates.end = nil
        }
        
        NotificationCenter.default.post(name: NotiName.selectDate, object: self, userInfo: ["sequenceDates" : sequenceDates] )
    }
}
