//
//  CondtionsTableViewCell.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/23.
//

import UIKit

class FindingAccommodationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var minvalue: UILabel!
    @IBOutlet weak var maxvalue: UILabel!
    
    func update(minvalue: String?, maxvalue: String?) {
        self.minvalue.text = minvalue ?? ""
        self.maxvalue.text = maxvalue ?? ""
    }
}
