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
        let orderedDates = dates.compactMap{ $0 }.sorted()
        
        guard !orderedDates.isEmpty else {
            period.resetAll()
            return
        }
        period.checkIn = orderedDates[0]
        
        if orderedDates.count == 2 {
            period.checkOut = orderedDates[1]
        }
    }
}
