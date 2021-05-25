//
//  SpotCollectionViewCell.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/21.
//

import UIKit

final class SpotCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SpotCollectionViewCell"
    static let nibName = "SpotCollectionViewCell"
    @IBOutlet weak var spotImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
