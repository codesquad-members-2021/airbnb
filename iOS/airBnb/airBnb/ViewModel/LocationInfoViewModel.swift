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
    
    func receiveSelectDates(from dates: SequenceDates) {
        searchManager.selectDays(from: dates)
    }
    
    func releaseSelectDates() -> AnyPublisher<String, Never> {
        return searchManager.$selectDates
            .map { $0.convertDateString() }
            .eraseToAnyPublisher()
    }
    
    func isEmptySelectDates() -> AnyPublisher<Bool, Never> {
        return searchManager.$selectDates
            .map { $0.start != nil && $0.end != nil }
            .eraseToAnyPublisher()
    }
    
    func deleteSelectDate() {
        switch state {
        case .calerdar:
            searchManager.resetDates()
        case .location:
            break
        case .price:
            break
        case .people:
            break
        case .none:
            break
        }
    }
    
    func skipAndDeleteString() -> AnyPublisher<String, Never> {
        switch state {
        case .calerdar:
            return searchManager.$selectDates
                .map { $0.start == nil ? "건너뛰기" : "지우기" }
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
            return searchManager.$price
                .map { $0.isEmpty ? "건너뛰기" : "지우기" }
                .eraseToAnyPublisher()
        case .none:
            return Just("건너뛰기")
                .eraseToAnyPublisher()
        }
    }
    
    func setSkipAndDeleteAction() -> Bool {
        switch state {
        case .calerdar:
          return searchManager.selectDates.start != nil ? true : false
        case .location:
            return false
        case .people:
            return false
        case .price:
            return false
        case .none:
            return false
        }
    }
}
