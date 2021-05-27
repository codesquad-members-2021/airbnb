//
//  Month.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class Month {
    
    let title: String
    var days: [Day]
    
    init(title: String, days: [Day]){
        self.title = title
        self.days = days
    }
    
    func updateDayStatus(fromIndex: Int, toIndex: Int, to status: SelectStatus) {
        (fromIndex...toIndex).forEach { index in
            let targetDay = days[index]
            if targetDay.timeStatus == .future {
                days[index].selectStatus = status
            }
        }
    }
    
    func date(at index: Int) -> Date? {
        return days[index].date
    }
    
    func lastDate() -> Date? {
        return days.last?.date
    }
    
    func lastIndex() -> Int {
        return days.count - 1 
    }
    
}
