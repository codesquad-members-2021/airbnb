//
//  ThemeDestinationsCell.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class ThemeDestinationsCell: UICollectionViewCell, UINibCreateable {

    @IBOutlet private weak var themeDestinationImageView: UIImageView!
    @IBOutlet private weak var themeDestinationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        themeDestinationImageView.backgroundColor = .brown
    }
    
    func configure(with model: Destination?) {
        guard let model = model else { return }
        themeDestinationImageView.load(url: model.imageURL)
        themeDestinationLabel.text = model.destinationName
    }

}
