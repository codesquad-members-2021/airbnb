//
//  RegionCell.swift
//  Airbnb
//
//  Created by Lia on 2021/05/21.
//

import UIKit

class RegionCell: UICollectionViewCell {

    static let reuseIdentifier = "RegionCell"
    static let nib = UINib(nibName: RegionCell.reuseIdentifier, bundle: nil)
    
    @IBOutlet weak var regionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fillUI(with region: Region) {
        self.regionLabel.text = region.name
    }

}

