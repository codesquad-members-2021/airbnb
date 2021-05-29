//
//  SearchManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation
import Combine

class SearchManager {
     
    @Published private(set) var location: String
    @Published private(set) var selectDates: SequenceDates
    @Published private(set) var priceRange: PriceRange
    @Published private(set) var numberOfPleple: PeopleManager
    @Published private(set) var totlaPeople: (Int, Int)
    
    private var cancell: AnyCancellable?
    
    init() {
        location = ""
        selectDates = .init(start: nil, end: nil)
        priceRange = .init()
        numberOfPleple = .init()
        totlaPeople = (0, 0)
        bind()
    }
    
    private func bind() {
        cancell = numberOfPleple.relayTotalCount().sink { (guest, baby) in
            self.totlaPeople = (guest, baby)
        }
    }
    
    func selectLocation(from location: String) {
        self.location = location
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
    
    func bindAuldtCount() -> AnyPublisher<Int, Never> {
        return numberOfPleple.relayAuldtCount()
    }
    
    func bindKidCount() -> AnyPublisher<Int, Never> {
        return numberOfPleple.relayKidCount()
    }
    
    func bindBabyCount() -> AnyPublisher<Int, Never> {
        return numberOfPleple.relayBabyCount()
    }
    
    func bindMinusButtonisEnanbled() -> AnyPublisher<(Bool, Bool, Bool), Never> {
        return numberOfPleple.isDectedZero()
    }
    
    func bindPlusButtonisEnanbled() -> AnyPublisher<(Bool, Bool, Bool), Never> {
        return numberOfPleple.isDectedFull()
    }
    
    func bindPeopleNextButtonisEnabled() -> AnyPublisher<Bool, Never> {
        return numberOfPleple.isNotZeroPeople()
    }
}
