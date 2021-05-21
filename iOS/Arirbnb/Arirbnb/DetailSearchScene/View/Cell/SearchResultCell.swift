//
//  SearchResultCell.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/21.
//

import UIKit

class SearchResultCell: UICollectionViewCell {

    static let reuseIdentifier = "SearchResultCell"
    static func nib() -> UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
    
    @IBOutlet weak var searchResultLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
