//
//  LocationCell.swift
//  Airbnb
//
//  Created by Ador on 2021/05/18.
//

import UIKit

class LocationCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    static let reuseId = "LocationCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .systemBackground
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
    }

    func configure(model: LocationCellModel) {
        imageView.image = UIImage(named: model.image)
        location.text = model.location
        distance.text = model.distance
    }
}
