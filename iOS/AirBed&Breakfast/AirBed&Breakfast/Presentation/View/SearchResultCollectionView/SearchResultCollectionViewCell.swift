//
//  SearchResultCollectionViewCell.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/18.
//

import UIKit

class SearchResultCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var destinationImageView: UIImageView!
    @IBOutlet weak var destinationNameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    static let reuseIdentifier = String(describing: SearchResultCollectionViewCell.self)
    static let nib = UINib(nibName: reuseIdentifier, bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
