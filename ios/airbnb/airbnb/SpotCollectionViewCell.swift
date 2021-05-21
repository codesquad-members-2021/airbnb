//
//  SpotCollectionViewCell.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/21.
//

import UIKit

class SpotCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: self)
    static let nibName = String(describing: self)
    @IBOutlet weak var spotImage: UIImageView!
    @IBOutlet weak var spotLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
