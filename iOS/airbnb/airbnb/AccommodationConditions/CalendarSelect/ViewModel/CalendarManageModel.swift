//
//  CalendarManageModel.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

protocol CalendarManageModel {
    func didNewDateSelected(at indexPath: IndexPath)
    func didSelectionCanceled()
    func calendarCreationNeeded()
}
