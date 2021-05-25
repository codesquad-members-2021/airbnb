//
//  LocationInfoViewModel.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/24.
//

import Foundation
import Combine

class LocationInfoViewModel {
    
    private var cancellable = Set<AnyCancellable>()
    private var searchManager: SearchManager
    
    init(from searchManager: SearchManager) {
        self.searchManager = searchManager
    }
    
    @Published var selectDates = SequenceDates(start: nil, end: nil)
    
    func receiveSelectDates(from dates: SequenceDates) {
        searchManager.selectDays(from: dates)
    }
    
    func receiveSelectDates(from dates: Date) {
        selectDates.selectDay(with: dates)
    }
    
    func releaseSelectDates() -> AnyPublisher<String, Never> {
        return searchManager.$selectDates
            .map { $0.convertDateString() }
            .eraseToAnyPublisher()
    }
    
    func isEmptySelectDates() -> AnyPublisher<Bool, Never> {
        return searchManager.$selectDates
            .dropFirst()
            .map { $0.start != nil && $0.end != nil }
            .eraseToAnyPublisher()
    }
}
