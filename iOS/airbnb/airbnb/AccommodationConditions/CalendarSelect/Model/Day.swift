//
//  Day.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

struct Day {
    let date: Date?
    let title: String?
    let timeStatus: TimeStatus
    
    enum TimeStatus {
        case past
        case future
        case empty
    }
    
    var selectStatus: SelectStatus = .none

    enum SelectStatus {
        case none
        case edge
        case middle
    }
}
