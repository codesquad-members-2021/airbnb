//
//  CityCollectionViewCell.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/20.
//

import UIKit

final class CityCollectionViewCell: UICollectionViewCell {
    
    static let nibName = "CityCollectionViewCell"
    static let identifier = "CityCollectionViewCell"

    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
