//
//  Period.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class Period {
    
    private let dateFormat = DateFormat.monthDay
    
    var checkIn: Date?
    var checkOut: Date?

    private func checkInString() -> String? {
        guard let checkIn = checkIn else { return nil }
        return DateFormatter.dateToString(format: dateFormat, date: checkIn)
    }
    
    private func checkOutString() -> String? {
        guard let checkOut = checkOut else { return nil }
        return DateFormatter.dateToString(format: dateFormat, date: checkOut)
    }

}

extension Period: CustomStringConvertible {
    var description: String {
        if let checkIn = checkInString(), let checkOut = checkOutString() {
            return checkIn + " ~ " + checkOut
        } else {
            return checkInString() ?? ""
        }
    }
}
