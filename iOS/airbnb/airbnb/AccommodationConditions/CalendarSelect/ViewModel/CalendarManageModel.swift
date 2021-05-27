//
//  CalendarManageModel.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

protocol CalendarManageModel {
    typealias DataHandler = ([Month]) -> Void
    typealias SearchConditionHandler = ([String]) -> Void
    func bind(dataHandler: @escaping DataHandler, searchHandler: @escaping SearchConditionHandler)
    func calendarUpdateNeeded()
    func didCalendarCellSelected(at indexPath: IndexPath)
}
