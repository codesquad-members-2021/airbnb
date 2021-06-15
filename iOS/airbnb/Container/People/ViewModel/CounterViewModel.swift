//
//  CounterViewModel.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import Foundation
import Combine

class CounterViewModel {
 
    typealias ViewUpdateClosure = () -> ()
    
    enum Person: CustomStringConvertible {
        case adult
        case child
        case baby
        
        var description: String {
            switch self {
            case .adult: return "성인"
            case .child: return "어린이"
            case .baby: return "유아"
            }
        }
    }

    let person: Person
    let limitAge: String
    var counter: CounterState
    private var cancellable : AnyCancellable?
    private var presenterHandler : ViewUpdateClosure?
    
    init(person: Person, limit: String){
        self.person = person
        self.limitAge = limit
        self.counter = CounterState()

        cancellable = counter.objectWillChange.sink {
            self.presenterHandler?()
        }
    }
    
    func bind(present handler: @escaping ViewUpdateClosure){
        self.presenterHandler = handler
    }

}
