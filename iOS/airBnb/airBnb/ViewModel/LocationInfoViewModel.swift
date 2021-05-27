//
//  LocationInfoViewModel.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/24.
//

import Foundation
import Combine

enum State {
    case location
    case calerdar
    case price
    case people
    case none
}

class LocationInfoViewModel {
    
    private var cancellable = Set<AnyCancellable>()
    private var searchManager: SearchManager
    private var state: State
    
    init(from searchManager: SearchManager,of state : State) {
        self.searchManager = searchManager
        self.state = state
    }
        
    func releaseSelectDates() -> AnyPublisher<String, Never> {
        return searchManager.$selectDates
            .map { $0.show() }
            .eraseToAnyPublisher()
    }
    
    func isEmptySelectDates() -> AnyPublisher<Bool, Never> {
        return searchManager.$selectDates
            .map { $0.hasValued() }
            .eraseToAnyPublisher()
    }
    
    func releasePriceRange() -> AnyPublisher<String, Never> {
        return searchManager.$priceRange
            .map { $0.show() }
            .eraseToAnyPublisher()
    }
    
    func allowNextButton() -> AnyPublisher<Bool, Never> {
        return searchManager.$priceRange
            .map { $0.hasValued() }
            .eraseToAnyPublisher()
    }
    
    func deleteData() {
        searchManager.reset(in: state)
    }
    
    func skipAndDeleteString() -> AnyPublisher<String, Never> {
        switch state {
        case .calerdar:
            return searchManager.$selectDates
                .map { self.skipAndDeleteString(to: $0.emptyStartValued()) }
                .eraseToAnyPublisher()
        case .location:
            return searchManager.$location
                .map { $0.isEmpty ? "건너뛰기" : "지우기" }
                .eraseToAnyPublisher()
        case .people:
            return searchManager.$numberOfPleple
                .map { $0.isEmpty ? "건너뛰기" : "지우기" }
                .eraseToAnyPublisher()
        case .price:
            return searchManager.$priceRange
                .map { self.skipAndDeleteString(to: $0.noticeChanged()) }
                .eraseToAnyPublisher()
        case .none:
            return Just("건너뛰기")
                .eraseToAnyPublisher()
        }
    }
    
    func setSkipAndDeleteAction() -> Bool {
        switch state {
        case .calerdar:
          return searchManager.selectDates.emptyStartValued()
        case .location:
            return false
        case .people:
            return false
        case .price:
            return searchManager.priceRange.hasValued()
        case .none:
            return false
        }
    }
    
    private func skipAndDeleteString(to bool: Bool) -> String {
        return bool ? "건너뛰기" : "지우기"
    }
}
