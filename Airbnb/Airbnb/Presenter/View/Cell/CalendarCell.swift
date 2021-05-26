import UIKit

class CalendarCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!
    
    static let identifier = "CalendarCell"
    
    func configure(_ text:String) {
        titleLabel.text = text
    }
}
