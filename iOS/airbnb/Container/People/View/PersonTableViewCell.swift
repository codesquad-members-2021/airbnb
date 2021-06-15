//
//  PersonTableViewCell.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit

class PersonTableViewCell: UITableViewCell, IdentityInfo {

    @IBOutlet weak var person: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    enum Action {
        case minus
        case plus
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        minusButton.isEnabled = false
    }
    
    func setUp(_ viewModel : CounterViewModel){
        ageLabel.text = viewModel.limitAge
        person.text = viewModel.person.description
        countLabel.text = String(viewModel.counter.count)
        
        if viewModel.counter.count == 0 {
            minusButton.isEnabled = false
        } else {
            minusButton.isEnabled = true
        }
    }
    
    func bind(control action: UIAction, for item: Action){
        switch item {
        case .minus:
            minusButton.addAction(action, for: .touchUpInside)
        case .plus:
            plusButton.addAction(action, for: .touchUpInside)
        }
    }
}
