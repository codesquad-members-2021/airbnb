//
//  CalendarViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class CalendarViewModel: CalendarManageModel {

    private var calendarHandler: DataHandler?
    private var conditionHandler: SearchConditionHandler?
    
    private var calendar: [Month]? {
        didSet {
            guard let calendar = calendar else { return }
            calendarHandler?(calendar)
        }
    }
    
    private var accommodationConditions: [String]? {
        didSet {
            guard let searchResult = accommodationConditions else { return }
            conditionHandler?(searchResult)
        }
    }
    
    private let calendarManager: CalendarManager
    private let conditionManager: ConditionManager
    
    enum ButtonTitle {
        static let backButton = "날짜 선택"
        static let pass = "건너뛰기"
        static let next = "다음"
    }
    
    static let weekdays = ["월", "화", "수", "목", "금", "토", "일"]
    static let conditionTitles = ["위치", "체크인/체크아웃", "요금", "인원"]
    
    init(calendarManager: CalendarManager, conditionManager: ConditionManager) {
        self.calendarManager = calendarManager
        self.conditionManager = conditionManager
    }
    
    convenience init(conditionManager: ConditionManager) {
        self.init(calendarManager: CalendarManager(), conditionManager: conditionManager)
    }
    
    func bind(dataHandler: @escaping DataHandler, searchHandler: @escaping SearchConditionHandler) {
        self.calendarHandler = dataHandler
        self.conditionHandler = searchHandler
        fillCalendar(by: 6)
        updateConditions()
    }
    
    private func fillCalendar(by count: Int) {
        calendarManager.fillMonths(by: count)
        calendar = calendarManager.months
    }
    
    private func updateConditions() {
        accommodationConditions = conditionManager.gettableInfos()
    }
    
    func calendarUpdateNeeded() {
        fillCalendar(by: 1)
    }

    func didCalendarCellSelected(at indexPath: IndexPath) {
        calendarManager.selectDateAt(indexPath: indexPath)
        calendar = calendarManager.months
        let newDates = calendarManager.dateSelected()
        conditionManager.updatePeriod(with: newDates)
        updateConditions()
    }
    
}
