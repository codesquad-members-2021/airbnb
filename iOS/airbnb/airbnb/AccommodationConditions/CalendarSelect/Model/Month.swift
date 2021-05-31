//
//  Month.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

final class Month {
    
    let title: String
    var days: [Day]
    
    init(title: String, days: [Day]){
        self.title = title
        self.days = days
    }
    
    func updateDayStatus(fromIndex: Int, toIndex: Int? = nil, to status: SelectStatus) {
        guard let toIndex = toIndex else {
            updateDayStatus(of: fromIndex, to: status)
            return
        }
        
        (fromIndex...toIndex).forEach { index in
            updateDayStatus(of: index, to: status)
        }
    }
    
    private func updateDayStatus(of index: Int, to status: SelectStatus) {
        let targetDay = days[index]
        if targetDay.timeStatus == .future {
            days[index].selectStatus = status
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
