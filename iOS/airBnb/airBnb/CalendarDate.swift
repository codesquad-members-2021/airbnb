//
//  Calendar.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import Foundation

class CalendarDate {
    
    var dates: [String:[String]] = [:]
    
    struct SequenceDates {
        var start,end: String?
    }
    lazy var sequenceDates: SequenceDates = .init(start: nil, end: nil)
    var selectDates: (from: Date?, to: Date?) = (from: nil, to: nil)
}
