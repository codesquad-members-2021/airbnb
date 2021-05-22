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
    private var calendarDate: CalendarDate
    private(set) var dates: [String:[String]] = [:]
    private var sequenceDates: SequenceDates
    
    init() {
        calendarDate = CalendarDate()
        sequenceDates = .init(start: nil, end: nil)
        makeCalendarDate()
    }
    
    func makeCalendarDate() {
        dates = CalendarHelper.makeCalenderDate()
    }
    
}
