//
//  LocationCell.swift
//  Airbnb
//
//  Created by Ador on 2021/05/18.
//

import UIKit

class RegionCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    static let reuseId = "RegionCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .systemBackground
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
    }

    func configure(model: RegionCellModel) {
        imageView.image = UIImage(named: model.image)
        location.text = model.location
        distance.text = model.distance
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        location.text = ""
        distance.text = ""
    }
}
