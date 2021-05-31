//
//  AdjacentDestinationsCell.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/17.
//

import UIKit

class AdjacentDestinationsCell: UICollectionViewCell, UINibCreateable {
    
    @IBOutlet private weak var destinationImageView: UIImageView!
    @IBOutlet private weak var destinationLabel: UILabel!
    @IBOutlet private weak var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        destinationImageView.backgroundColor = .red
    }
    
    func configure(with model: Destination?) {
        guard let model = model else { return }
        destinationImageView.load(url: model.imageURL)
        destinationLabel.text = model.destinationName
        distanceLabel.text = model.distance
    }

}
