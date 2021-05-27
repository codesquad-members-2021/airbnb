//
//  FooterTableViewCell.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/27.
//

import UIKit

class FooterTableViewCell: UITableViewCell, IdentityInfo{

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
