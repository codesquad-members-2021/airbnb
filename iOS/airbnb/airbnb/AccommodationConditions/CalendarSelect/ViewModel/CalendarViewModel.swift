//
//  CalendarViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class CalendarViewModel: CalendarManageModel {

    private var calendarHandler: CalendarHandler?
    private var conditionHandler: ConditionHandler?
    
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
    
    private let dateSelectionManager: DateSelectionManager
    private let conditionManager: ConditionManager
    
    enum ButtonTitle {
        static let backButton = "날짜 선택"
        static let pass = "건너뛰기"
        static let next = "다음"
        static let cancel = "지우기"
    }
    
    static let weekdays = ["월", "화", "수", "목", "금", "토", "일"]
    static let conditionTitles = ["위치", "체크인/체크아웃", "요금", "인원"]
    
    init(dateSelectionManager: DateSelectionManager, conditionManager: ConditionManager) {
        self.dateSelectionManager = dateSelectionManager
        self.conditionManager = conditionManager
    }
    
    convenience init(conditionManager: ConditionManager) {
        self.init(dateSelectionManager: DateSelectionManager(), conditionManager: conditionManager)
    }
    
    func bind(dataHandler: @escaping CalendarHandler, searchHandler: @escaping ConditionHandler) {
        self.calendarHandler = dataHandler
        self.conditionHandler = searchHandler
        fillCalendar(by: 6)
        updateConditions()
    }
    
    private func fillCalendar(by count: Int) {
        dateSelectionManager.loadMoreMonths(by: count)
        updateCalendar()
    }
    
    private func updateCalendar() {
        calendar = dateSelectionManager.allMonths()
    }
    
    private func updateConditions() {
        accommodationConditions = conditionManager.gettableInfos()
    }
    
    func calendarUpdateNeeded() {
        fillCalendar(by: 1)
    }

    func didCalendarCellSelected(at indexPath: IndexPath) {
        dateSelectionManager.newDateSelected(at: indexPath)
        updateCalendar()
        
        let newDates = dateSelectionManager.selectedDates()
        conditionManager.updatePeriod(with: newDates)
        updateConditions()
    }
    
    func didAllSelectionCanceled() {
        dateSelectionManager.clearAll()
        updateCalendar()
        
        conditionManager.updatePeriod(with: [])
        updateConditions()
    }
    
}
