//
//  PersonCell.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import UIKit

class PersonCell: UITableViewCell {

    static let reuseIdentifier = "PersonCell"
    static let nib = UINib(nibName:PersonCell.reuseIdentifier, bundle: nil)
    
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    private var viewModel: PeopleViewModel!
    private var humanType: HumanType!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

extension PersonCell {
    
    func setInitialUI(with info: PersonCellInfo) {
        self.humanType = info.person
        self.personLabel.text = info.person.rawValue
        self.ageLabel.text = info.age
        self.countLabel.text = "0"
        self.minusButton.isEnabled = false
    }

    func setViewModel(with viewModel: PeopleViewModel) {
        self.viewModel = viewModel
    }
    
    func changeCountLabel(with count: String) {
        countLabel.text = count
    }
    
}

extension PersonCell {
    
    @IBAction func minusButtonTouched(_ sender: UIButton) {
        self.viewModel.changePeopleNum(type: humanType, operation: .minus)
    }
    
    @IBAction func plusButtonTouched(_ sender: UIButton) {
        self.viewModel.changePeopleNum(type: humanType, operation: .plus)
    }
    
    func isButtonEnable() {
        let enable = viewModel.isChangeAvailable(type: humanType)
        minusButton.isEnabled = enable.0
        plusButton.isEnabled = enable.1
    }
}
