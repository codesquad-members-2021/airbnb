//
//  ConditionViewTableViewCell.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/21.
//

import UIKit

class FindingAccommodationViewTableViewCell: UITableViewCell {
    @IBOutlet weak var value: UILabel!
    
    func update(value: String) {
        self.value.text = value
    }
}
