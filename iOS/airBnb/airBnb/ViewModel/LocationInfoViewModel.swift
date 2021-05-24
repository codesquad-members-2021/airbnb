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
    @Published private var selectDates = SequenceDates(start: nil, end: nil)
    
    func receiveSelectDates(from dates: SequenceDates) {
        selectDates = dates
    }
    
    func releaseSelectDates() -> AnyPublisher<String, Never> {
        return $selectDates
            .map { $0.convertDateString() }
            .eraseToAnyPublisher()
    }
    
    func isEmptySelectDates() -> AnyPublisher<Bool, Never> {
        return $selectDates
            .dropFirst()
            .map { $0.start != nil && $0.end != nil }
            .eraseToAnyPublisher()
    }
}
