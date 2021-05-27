//
//  AccommodationConditions.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class AccommodationConditions {
    
    private(set) var location: LocationSearchResult
    private(set) var period: Period
    private(set) var charge: Charge
    private(set) var headcount: Int?
    
    init(location: LocationSearchResult) {
        self.location = location
        self.period = Period()
        self.charge = Charge()
    }
    
    enum Key: CaseIterable {
        case location
        case period
        case charge
        case headcount
    }
    
    func gettableInfos() -> [String] {
        let locationInfo = location.name
        let periodInfo = period.description
        let chargeInfo = ""
        let headcountInfo = ""
        return [locationInfo, periodInfo, chargeInfo, headcountInfo]
    }
    
    func updatePeriod(with dates: [Date?]) {
        let dates = dates.compactMap{ $0 }
        guard !dates.isEmpty else { return }
        period.checkIn = dates[0]
        if dates.count == 2 { period.checkOut = dates[1] }
    }
}

class Period: CustomStringConvertible {
    
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
    
    var description: String {
        if let checkIn = checkInString(), let checkOut = checkOutString() {
            return checkIn + " ~ " + checkOut
        } else {
            return checkInString() ?? ""
        }
    }
    
}

class Charge {
    var minimum: Double?
    var maximum: Double?
}
