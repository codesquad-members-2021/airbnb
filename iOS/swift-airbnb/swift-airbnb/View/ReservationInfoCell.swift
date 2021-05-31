//
//  ReservationInfoCell.swift
//  swift-airbnb
//
//  Created by user on 2021/05/28.
//

import UIKit

class ReservationInfoCell: UITableViewCell {

    @IBOutlet var title: UILabel!
    @IBOutlet var content: UILabel!
    
    static let reuseIdentifier = "ReservationInfoCell"
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
}
