//
//  NumberAdjustmentView.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/27.
//

import UIKit

class NumberAdjustmentView: UIView {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    
    var count: Int = 0 {
        didSet {
            if self.count == 0 {
                minusButton.isEnabled = false
            } else {
                minusButton.isEnabled = true
            }
        }
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        self.count -= 1
    }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        self.count += 1
    }
    
}
