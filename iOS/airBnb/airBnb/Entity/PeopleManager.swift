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
        
                adult.$count.sink { (v) in
                    print("ad",v)
                }.store(in: &cancellable)
                kid.$count.sink { (v) in
                    print("kd",v)
                }.store(in: &cancellable)
                baby.$count.sink { (v) in
                    print("bb",v)
                }.store(in: &cancellable)
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
    
    func existOnlyChildren() {
        if adult.isZero() && (baby.isNotZero() || kid.isNotZero()) {
            adult.count += 1
        }
    }
}
