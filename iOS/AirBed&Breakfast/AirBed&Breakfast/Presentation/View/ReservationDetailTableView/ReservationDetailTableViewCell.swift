//
//  ReservationDetailTableViewCell.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit

class ReservationDetailTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailContentsLabel: UILabel!
    
    static let reuseIdentifier = String(describing: ReservationDetailTableViewCell.self)
    static let nib = UINib(nibName: reuseIdentifier, bundle: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
