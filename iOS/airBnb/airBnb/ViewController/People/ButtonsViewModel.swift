//
//  ButtonsViewModel.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/28.
//

import UIKit

class ButtonsViewModel: NSObject {
    
    enum Action {
        case plus
        case minus
    }
    
    @IBOutlet var plusButtons: [UIButton]!
    @IBOutlet var minusButtons: [UIButton]!
    
    private var plusMapper: ButtonMapper?
    private var minusMapper: ButtonMapper?
    
    private var buttonTouchedHandler : (PeopleTypes, Action) -> ()
    
    override init() {
        buttonTouchedHandler = { _,_ in }
    }
    
    func makeButtonsMapper() {
        self.plusMapper = ButtonMapper(from: plusButtons)
        self.minusMapper = ButtonMapper(from: minusButtons)
    }
    
    @IBAction func plus(_ sender: UIButton) {
        guard let peopleType = plusMapper?[sender] else {
            return
        }
        buttonTouchedHandler(peopleType, .plus)
    }
    
    @IBAction func minus(_ sender: UIButton) {
        guard let peopleType = minusMapper?[sender] else {
            return
        }
        buttonTouchedHandler(peopleType, .minus)
    }
    
    func bind(action: @escaping (PeopleTypes, Action) -> ()) {
        self.buttonTouchedHandler = action
    }
    
    func canMinusButtonTouched(adult: Bool, kid: Bool, baby: Bool) {
        let enabled = [adult,kid,baby]
        _ = zip(minusButtons, enabled).map { (button, bool) in
            button.isEnabled = bool
        }
    }
    
    func canPlusButtonTouched(adult: Bool, kid: Bool, baby: Bool) {
        let enabled = [adult,kid,baby]
        _ = zip(plusButtons, enabled).map { (button, bool) in
            button.isEnabled = bool
        }
    }
}
