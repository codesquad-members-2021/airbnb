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
    @Published var numberOfPleple: PeopleManager
    
    init() {
        location = ""
        selectDates = .init(start: nil, end: nil)
        priceRange = .init()
        numberOfPleple = .init()
    }
    
    func selectDay(from day: Date) {
        selectDates.selectDay(with: day)
    }
    
    func reset(in state: State) {
        switch state {
        case .calerdar:
            selectDates.reset()
            NotificationCenter.default.post(name: .seletDatesReset, object: nil)
        case .location:
            break
        case .price:
            priceRange.reset()
            NotificationCenter.default.post(name: .priceReset, object: nil)
        case .people:
            break
        case .none:
            break
        }
    }
    
    func changePrice(from price: priceSlider){
        priceRange.change(from: price)
    }
    
    func increasePeople(from type: PeopleTypes){
        numberOfPleple.increasePeople(from: type)
    }

    func decreasePeoeple(from type: PeopleTypes){
        numberOfPleple.decreasePeople(from: type)
    }
}
