//
//  DateGenerator.swift
//  Airbnb
//
//  Created by Lia on 2021/05/27.
//

import Foundation

class DateGenerator {
    static func getTheMonth(year: Int, month: Int) -> [Day] {
        var theMonth = [Day]()
        let calendar = Calendar.current
        
        let components = DateComponents(year: year, month: month, day: 1)
        let date = calendar.date(from: components) ?? Date()
        
        for _ in 1..<date.weekday {
            let day = Day(date: nil)
            theMonth.append(day)
        }
        
        for day in (1...31) {
            let components = DateComponents(year: year, month: month, day: day)
            let date = calendar.date(from: components)
            if date?.month == month {
                let day = Day(date: date)
                theMonth.append(day)
            }
        }
        return theMonth
    }
}


struct Day: Hashable {
    var date: Date?
    var uuid = UUID()
}
