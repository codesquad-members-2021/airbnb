//
//  CounterViewModel.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit
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
    
    enum Action {
        case minus
        case plus
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

    func bind(control action: UIAction, for item: Action, cell : PersonTableViewCell) {
        switch item {
        case .minus:
            cell.minusButton.addAction(action, for: .touchUpInside)
        case .plus:
            cell.plusButton.addAction(action, for: .touchUpInside)
        }
    }
    
    func bind(present handler: @escaping ViewUpdateClosure){
        self.presenterHandler = handler
    }

}
