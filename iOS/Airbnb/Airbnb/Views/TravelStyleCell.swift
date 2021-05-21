//
//  StyleCell.swift
//  Airbnb
//
//  Created by Ador on 2021/05/18.
//

import UIKit

class TravelStyleCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var content: UILabel!

    static let reuseId = "TravelStyleCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
    }

    func configure(model: StyleCellModel) {
        imageView.image = UIImage(named: model.image)
        content.text = model.content
    }
}

struct StyleCellModel {
    let image: String
    let content: String
}
