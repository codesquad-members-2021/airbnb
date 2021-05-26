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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        config()
        self.activityIndicator.startAnimating()
    }
    
    func config(){
        thumbnail.layer.cornerRadius = 10
    }

}
