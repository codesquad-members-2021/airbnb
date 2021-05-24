

import UIKit

class SearchResultTableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    
    static let identifier = "SearchResultTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func configureSearchResultCell() {
        
    }
    
}
