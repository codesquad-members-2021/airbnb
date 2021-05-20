//
//  CityCollectionViewCell.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/20.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var locationImage: UIImageView!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
