//
//  CalendarManageModel.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

protocol CalendarManageModel {
    typealias CalendarHandler = ([Month]) -> Void
    typealias ConditionHandler = ([String]) -> Void
    func bind(dataHandler: @escaping CalendarHandler, searchHandler: @escaping ConditionHandler)
    func calendarUpdateNeeded()
    func didCalendarCellSelected(at indexPath: IndexPath)
    func didAllSelectionCanceled()
}
