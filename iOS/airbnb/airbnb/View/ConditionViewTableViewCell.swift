//
//  ConditionViewTableViewCell.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/21.
//

import UIKit

class ConditionViewTableViewCell: UITableViewCell {
    @IBOutlet weak var value: UILabel!
    
    func update(value: String) {
        self.value.text = value
    }
}
