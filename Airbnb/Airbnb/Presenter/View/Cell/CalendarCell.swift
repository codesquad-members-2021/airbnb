import UIKit

final class CalendarCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!
    
    static let identifier = "CalendarCell"
    
    func configure(_ info:[String]) {
        titleLabel.text = info[0]
        contentLabel.text = info[1]
    }
}
