//
//  AdjacentDestinationsCell.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/17.
//

import UIKit

class AdjacentDestinationsCell: UICollectionViewCell {

    static let reuseIdentifier = "AdjacentDestinationsCell"
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: Bundle.main)
    }
    
    @IBOutlet weak var destinationImageView: UIImageView!
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        destinationImageView.backgroundColor = .red
    }
    
    func configure(with model: AdjacentDestination?) {
        guard let model = model else { return }
        destinationImageView.load(url: model.imageURL)
        destinationLabel.text = model.destinationName
        distanceLabel.text = model.distance
    }

}
