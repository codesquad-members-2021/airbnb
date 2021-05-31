//
//  CalendarViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

final class CalendarViewModel: AnySearchConditionHandleModel<[Month]> {

    private var calendar: [Month]? {
        didSet {
            guard let calendar = calendar else { return }
            dataHandler?(calendar)
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
    
    static let weekdays = ["일", "월", "화", "수", "목", "금", "토"]
    static let conditionTitles = ["위치", "체크인/체크아웃", "요금", "인원"]
    
    init(dateSelectionManager: DateSelectionManager, conditionManager: ConditionManager) {
        self.dateSelectionManager = dateSelectionManager
        self.conditionManager = conditionManager
    }
    
    convenience init(conditionManager: ConditionManager) {
        self.init(dateSelectionManager: DateSelectionManager(), conditionManager: conditionManager)
    }
    
    override func bind(dataHandler: @escaping DataHandler, conditionHandler: @escaping ConditionHandler) {
        super.bind(dataHandler: dataHandler, conditionHandler: conditionHandler)
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

}

extension CalendarViewModel: CalendarManageModel {
    
    func didNewDateSelected(at indexPath: IndexPath) {
        dateSelectionManager.newDateSelected(at: indexPath)
        updateCalendar()
        
        let newDates = dateSelectionManager.selectedDates()
        conditionManager.updatePeriod(with: newDates)
        updateConditions()
    }
    
    func didSelectionCanceled() {
        dateSelectionManager.clearAll()
        updateCalendar()
        
        conditionManager.updatePeriod(with: [])
        updateConditions()
    }
    
    func calendarCreationNeeded() {
        fillCalendar(by: 1)
    }
    
}
