//
//  PeopleManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/28.
//

import Foundation
import Combine

class PeopleManager {
    
    private var adult = AdultCountState()
    private var kid = KidCountState()
    private var baby = BabyCountState()
    
    private var peopleMapper: [PeopleTypes: CountStatable]
    var cancellable = Set<AnyCancellable>()
    
    init() {
        let people: [CountStatable] = [adult,kid,baby]
        self.peopleMapper = Dictionary(uniqueKeysWithValues: zip(PeopleTypes.allCases, people))
    }
    
    func increasePeople(from people: PeopleTypes) {
        peopleMapper[people]?.increase()
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
}
