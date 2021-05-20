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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.mainImageView.backgroundColor = .red
    }

}
