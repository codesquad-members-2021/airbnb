//
//  VariousDestinationCell.swift
//  swift-airbnb
//
//  Created by user on 2021/05/19.
//

import UIKit

class VariousDestinationCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageDescriptionLabel: UILabel!
    
    static let reuseIdentifier = "VariousDestinationCell"
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.imageView.backgroundColor = .red
    }

}
