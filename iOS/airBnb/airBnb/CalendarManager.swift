//
//  CalendarManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import Foundation

class CalendarManager {
    private(set) var dates: [String:[Date?]] = [:]
    
    init() {
        makeCalendarDate()
    }
    
    private func makeCalendarDate() {
        dates = CalendarHelper.makeCalenderDate()
    }
}
