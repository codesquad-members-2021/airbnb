//
//  CalendarViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class CalendarViewModel: CalendarManageModel {

    private var dataHandler: DataHandler?
    
    private var calendar: [Month]? {
        didSet {
            guard let calendar = calendar else { return }
            dataHandler?(calendar)
        }
    }
    
    private let calendarManager: CalendarManager
    
    enum ButtonTitle {
        static let backButton = "날짜 선택"
        static let pass = "건너뛰기"
        static let next = "다음"
    }
    
    init(calendarManager: CalendarManager) {
        self.calendarManager = calendarManager
    }
    
    convenience init() {
        self.init(calendarManager: CalendarManager())
    }
    
    func bind(dataHandler: @escaping DataHandler) {
        self.dataHandler = dataHandler
        fillCalendar(by: 6)
    }
    
    func calendarUpdateNeeded() {
        fillCalendar(by: 1)
    }
    
    private func fillCalendar(by count: Int) {
        calendarManager.fillMonths(by: count)
        calendar = calendarManager.months
    }
    
}
