//
//  NearbyDestinationCell.swift
//  swift-airbnb
//
//  Created by user on 2021/05/19.
//

import UIKit

class NearbyDestinationCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    static let reuseIdentifier = "NearbyDestinationCell"
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.imageView.backgroundColor = .red
    }
    
}
