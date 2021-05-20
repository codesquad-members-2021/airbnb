//
//  PopularLocationTableViewCell.swift
//  airbnb
//
//  Created by Song on 2021/05/18.
//

import UIKit

class PopularLocationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var popularLocationImageView: UIImageView!
    @IBOutlet weak var popularLocationTitleLabel: UILabel!
    @IBOutlet weak var popularLocationDistanceLabel: UILabel!
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func update(with textInfos: PopularLocation) {
        popularLocationTitleLabel.text = textInfos.name
        popularLocationDistanceLabel.text = textInfos.distanceFromHere
    }
    
    func update(with imagePath: String) {
        let image = UIImage(contentsOfFile: imagePath) ?? UIImage()
        popularLocationImageView.contentMode = .scaleAspectFill
        popularLocationImageView.image = image
    }
    
}
