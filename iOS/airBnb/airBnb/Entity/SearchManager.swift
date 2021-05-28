//
//  SearchManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation
import Combine

class SearchManager {
     
    @Published var location: String
    @Published private(set) var selectDates: SequenceDates
    @Published private(set) var priceRange: PriceRange
    @Published var numberOfPleple: PeopleManager
    @Published private(set) var totlaPeople: Int
    
    private var cancell: AnyCancellable?
    
    init() {
        location = ""
        selectDates = .init(start: nil, end: nil)
        priceRange = .init()
        numberOfPleple = .init()
        totlaPeople = 0
        bind()
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
    
    func bindAuldtCount() -> AnyPublisher<Int, Never> {
        return numberOfPleple.relayAuldtCount()
    }
    
    func bindKidCount() -> AnyPublisher<Int, Never> {
        return numberOfPleple.relayKidCount()
    }
    
    func bindBabyCount() -> AnyPublisher<Int, Never> {
        return numberOfPleple.relayBabyCount()
    }
    
    private func bind() {
        cancell = numberOfPleple.relayTotalCount().sink { (total) in
            self.totlaPeople = total
        }
    }
    
}
