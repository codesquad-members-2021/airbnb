

import UIKit

class TravelCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var travelImageView: UIImageView!
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    static let identifier = "TravelCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configureTravelCell() {
        
    }
}
