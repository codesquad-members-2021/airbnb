//
//  SearchResultTableViewCell.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

class SearchResultTableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
