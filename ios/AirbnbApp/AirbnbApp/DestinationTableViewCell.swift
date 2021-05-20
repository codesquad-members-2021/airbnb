//
//  BestDestinationTableViewCell.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/20.
//

import UIKit

class DestinationTableViewCell: UITableViewCell {
    static let reuseIdentifier = String(describing: DestinationTableViewCell.self)
    @IBOutlet weak var destinationImageView: UIImageView!
    @IBOutlet weak var destinationNameLabel: UILabel!
    @IBOutlet weak var drivingTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        destinationImageView.layer.masksToBounds = true
        destinationImageView.layer.cornerRadius = 10.0
    }
    
    static func nib() -> UINib {
        let nib = UINib(nibName: reuseIdentifier, bundle: nil)
        return nib
    }
}
