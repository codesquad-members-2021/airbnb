

import UIKit

class RecommendTravelCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var recommendTravelImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    static let identifier = "RecommendTravelCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configureTravelCell() {
        
    }
}
