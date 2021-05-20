//
//  TravelPlaceCell.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class NearPlaceCell: UICollectionViewCell, IdentityInfo {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var areaTitle: UILabel!
    @IBOutlet weak var timeRequired: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    func config(){
        thumbnail.layer.cornerRadius = 10
    }

}
