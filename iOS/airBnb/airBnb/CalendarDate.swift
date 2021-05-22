//
//  Calendar.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import Foundation

class CalendarDate {
    
    private(set) var sequenceDates: SequenceDates
    
    init() {
        sequenceDates = .init(start: nil, end: nil)
    }
    
    func willSelectDates(with indexPath: String) {
        let willSelectedDate = indexPath
        
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
    }
}
