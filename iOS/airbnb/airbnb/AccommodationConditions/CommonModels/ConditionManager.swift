//
//  AccommodationConditions.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

class ConditionManager {
    
    private var location: Location
    private var period: Period
    private var charge: Charge
    private var headcount: Int?
    
    init(location: Location) {
        self.location = location
        self.period = Period()
        self.charge = Charge()
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
