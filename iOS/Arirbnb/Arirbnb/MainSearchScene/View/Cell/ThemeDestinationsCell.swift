//
//  ThemeDestinationsCell.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class ThemeDestinationsCell: UICollectionViewCell {

    static let reuseIdentifier = "ThemeDestinationsCell"
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    @IBOutlet weak var themeDestinationImageView: UIImageView!
    @IBOutlet weak var themeDestinationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        themeDestinationImageView.backgroundColor = .brown
    }
    
    func configure(with model: ThemeDestination?) {
        guard let model = model else { return }
        themeDestinationImageView.load(url: model.imageURL)
        themeDestinationLabel.text = model.themeName
    }

}
