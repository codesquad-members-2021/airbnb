//
//  PeopleManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/28.
//

import Foundation
import Combine

class PeopleManager {
    
    private var adult: AdultCountState
    private var kid: KidCountState
    private var baby: BabyCountState
    
    private var peopleMapper: [PeopleTypes: CountStatable]
    private lazy var people: [CountStatable] = [adult,kid,baby]
    
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        self.adult = AdultCountState()
        self.kid = KidCountState()
        self.baby = BabyCountState()
        self.peopleMapper = [:]
        createMapper()
    }
    
    private func createMapper() {
        self.peopleMapper = Dictionary(uniqueKeysWithValues: zip(PeopleTypes.allCases, people))
    }
    
    func increasePeople(from people: PeopleTypes) {
        peopleMapper[people]?.increase()
        existOnlyChildren()
    }
    
    func decreasePeople(from people: PeopleTypes) {
        peopleMapper[people]?.decrease()
        existOnlyChildren()
    }
    
    func relayAuldtCount() -> AnyPublisher<Int, Never> {
        return adult.$count.eraseToAnyPublisher()
    }
    
    func relayKidCount() -> AnyPublisher<Int, Never> {
        return kid.$count.eraseToAnyPublisher()
    }
    
    func relayBabyCount() -> AnyPublisher<Int, Never> {
        return baby.$count.eraseToAnyPublisher()
    }
    
    func relayTotalCount() -> AnyPublisher<Int, Never> {
        return adult.$count.combineLatest(kid.$count)
            .map { $0 + $1 }
            .eraseToAnyPublisher()
    }
    
    func isDectedZero() -> AnyPublisher<(Bool, Bool, Bool), Never> {
        adult.$count.combineLatest(kid.$count, baby.$count)
            .map {
                (self.isNotZero(count: $0),
                 self.isNotZero(count: $1),
                 self.isNotZero(count: $2))
            }.eraseToAnyPublisher()
    }
    
    private func isNotZero(count: Int) -> Bool {
        return count != 0
    }
    
    func isDectedFull() -> AnyPublisher<(Bool, Bool, Bool), Never> {
        adult.$count.combineLatest(kid.$count, baby.$count)
            .map {
                (self.isNotFull(count: $0),
                 self.isNotFull(count: $1),
                 self.isNotFull(count: $2))
            }.eraseToAnyPublisher()
    }
    
    private func isNotFull(count: Int) -> Bool {
        return count != 8
    }
    
    private func existOnlyChildren() {
        if adult.isZero() && (baby.isNotZero() || kid.isNotZero()) {
            adult.count += 1
        }
    }
}
