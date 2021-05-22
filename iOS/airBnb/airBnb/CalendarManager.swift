//
//  CalendarManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import Foundation

struct SequenceDates {
    var start,end: String?
}

class CalendarManager {
    private(set) var dates: [String:[String]] = [:]
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
    
    func selectDay(with day: String) {
        let willSelectedDate = day
        
        if sequenceDates.start == nil && sequenceDates.end == nil {
            sequenceDates.start = willSelectedDate
            sequenceDates.end = nil
        } else if let _ = sequenceDates.start, let _ = sequenceDates.end {
            sequenceDates.start = willSelectedDate
            sequenceDates.end = nil
        } else if let start = sequenceDates.start, sequenceDates.end == nil && start == willSelectedDate {
            sequenceDates.start = nil
            sequenceDates.end = nil
        } else if let start = sequenceDates.start, sequenceDates.end == nil && start != willSelectedDate {
            if willSelectedDate < start {
                sequenceDates.start = willSelectedDate
                sequenceDates.end = start
            } else {
                sequenceDates.start = start
                sequenceDates.end = willSelectedDate
            }
        } else {
            sequenceDates.start = nil
            sequenceDates.end = nil
        }
        
        NotificationCenter.default.post(name: NotiName.selectDate, object: self, userInfo: ["sequenceDates" : sequenceDates] )
    }
}
