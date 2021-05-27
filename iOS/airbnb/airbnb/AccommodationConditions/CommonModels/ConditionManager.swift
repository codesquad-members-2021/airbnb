//
//  AccommodationConditions.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class ConditionManager {
    
    private(set) var location: Location
    private(set) var period: Period
    private(set) var charge: Charge
    private(set) var headcount: Int?
    
    init(location: Location) {
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
