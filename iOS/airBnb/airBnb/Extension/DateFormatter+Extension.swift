//
//  DateFormatter+Extension.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

extension DateFormatter {
    func convertCalenderHeaderString(date: Date) -> String {
        self.dateFormat = "yyyy년 M월"
        return self.string(from: date)
    }
    
    func convertCalenderDayString(date: Date) -> String {
        self.dateFormat = "yyyy-M-d"
        return self.string(from: date)
    }
    
    func convertDayString(date: Date) -> String {
        self.dateFormat = "d"
        return self.string(from: date)
    }
}

