//
//  SearchManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

class SearchManager {
     
    @Published var location: String
    @Published private(set) var selectDates: SequenceDates
    @Published var price: String
    @Published var numberOfPleple: String
    
    init() {
        location = ""
        selectDates = .init(start: nil, end: nil)
        price = ""
        numberOfPleple = ""
    }
    
    func selectDay(from day: Date) {
        selectDates.selectDay(with: day)
    }
    
    func selectDays(from dates: SequenceDates) {
        selectDates = dates
    }
     
    func resetDates() {
        selectDates.start = nil
        selectDates.end = nil
        NotificationCenter.default.post(name: CalendarViewController.NotiName.reset, object: nil)
    }

}
