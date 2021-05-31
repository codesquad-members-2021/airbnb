//
//  CalendarCoordinate.swift
//  airbnb
//
//  Created by Song on 2021/05/31.
//

import Foundation

struct CalendarCoordinate {
    let month: Int
    let day: Int

    init(with indexPath: IndexPath) {
        self.month = indexPath.section
        self.day = indexPath.row
    }
    
    enum MonthRelationship {
        case same
        case continuous
        case away
    }
    
    static func relationship(between first: CalendarCoordinate,_ second: CalendarCoordinate) -> MonthRelationship {
        let monthDiff = abs(first.month - second.month)
        switch monthDiff {
        case 0:
            return .same
        case 1:
            return .continuous
        default:
            return .away
        }
    }
}

extension CalendarCoordinate: Comparable {
    static func < (lhs: CalendarCoordinate, rhs: CalendarCoordinate) -> Bool {
        let sameMonth = lhs.month == rhs.month && lhs.day < rhs.day
        let differentMonth = lhs.month < rhs.month
        return sameMonth || differentMonth
    }
}
