//
//  SearchTableViewCell.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/26.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var regionImageView: UIImageView!
    @IBOutlet weak var regionNameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(name: String, imageUrl: String) {
        self.regionImageView.load(url: imageUrl)
        self.regionNameLabel.text = name
    }

}
