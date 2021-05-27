//
//  CalendarManageModel.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

protocol CalendarManageModel {
    typealias DataHandler = ([Month]) -> Void
    func bind(dataHandler: @escaping DataHandler)
    func calendarUpdateNeeded()
}
