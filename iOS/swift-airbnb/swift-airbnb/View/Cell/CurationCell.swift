//
//  CurationCell.swift
//  swift-airbnb
//
//  Created by user on 2021/05/19.
//

import UIKit

class CurationCell: UICollectionViewCell {
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var fakeButtonLabel: UILabel!
    
    static let reuseIdentifier = "CurationCell"
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    func configure(model: CurationModel) {
        let image = UIImage(named: "\(model.curationImage)")
        self.mainImageView.image = image
    }
}
