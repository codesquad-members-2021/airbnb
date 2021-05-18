//
//  TravelPlaceCell.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class TravelAreaCell: UICollectionViewCell {
    
    static var nibName: String {
        return String(describing: TravelAreaCell.self)
    }
    static var reuseIdentifier: String {
        return String(describing: TravelAreaCell.self)
    }

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var areaTitle: UILabel!
    @IBOutlet weak var timeRequired: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
