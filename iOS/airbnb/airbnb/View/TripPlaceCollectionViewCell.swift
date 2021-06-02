//
//  TripPlaceCollectionViewCell.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/26.
//

import UIKit

class TripPlaceCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var regionImageView: UIImageView!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    func update(id: Int, name: String, imageUrl: String) {
        self.regionImageView.load(url: imageUrl)
        self.regionLabel.text = name
    }
}
