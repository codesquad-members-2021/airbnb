//
//  SearchManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

class SearchManager {
     
    @Published var location: String
    @Published private(set) var selectDates: SequenceDates
    @Published private(set) var priceRange: PriceRange
    @Published var numberOfPleple: String
    
    init() {
        location = ""
        selectDates = .init(start: nil, end: nil)
        priceRange = .init()
        numberOfPleple = ""
    }
    
    func selectDay(from day: Date) {
        selectDates.selectDay(with: day)
    }
    
    func selectDays(from dates: SequenceDates) {
        selectDates = dates
    }
     
    func resetDates() {
        selectDates.reset()
        NotificationCenter.default.post(name: .seletDatesReset, object: nil)
    }
    
    func changePrice(from price: priceSlider){
        priceRange.change(from: price)
    }

}
