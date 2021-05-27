//
//  SearchResultCell.swift
//  swift-airbnb
//
//  Created by user on 2021/05/23.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    @IBOutlet weak var mapImageView: UIView!
    @IBOutlet weak var mapLabel: UILabel!
    
    static let reuseIdentifier = "SearchResultCell"
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.mapImageView.layer.borderColor = UIColor(red: 0.51, green: 0.51, blue: 0.51, alpha: 1).cgColor
    }

    func configure(model: SearchResultDestination) {
        var labelText: String = ""
        labelText += "\(model.addressName), \(model.placeName)"
        self.mapLabel.text = labelText
    }
}
