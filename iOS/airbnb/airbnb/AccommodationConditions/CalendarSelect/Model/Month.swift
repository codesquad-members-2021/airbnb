//
//  Month.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

struct Month {
    let title: String
    var days: [Day]
    
    mutating func updateSelectStatus(fromIndex: Int, toIndex: Int, to status: Day.SelectStatus) {
        (fromIndex...toIndex).forEach { index in
            let targetDay = days[index]
            if targetDay.timeStatus == .future {
                days[index].selectStatus = status
            }
        }
    }
    
}
