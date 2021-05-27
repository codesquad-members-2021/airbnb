//
//  RecommendTripCollectionViewCell.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/26.
//

import UIKit

class RecommendTripCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var accommodationImageView: UIImageView!
    @IBOutlet weak var accommodationDescriptionLabel: UILabel!
    
    func update(name: String, imageUrl: String) {
        self.accommodationDescriptionLabel.text = name
        self.accommodationImageView.load(url: imageUrl)
    }
}
