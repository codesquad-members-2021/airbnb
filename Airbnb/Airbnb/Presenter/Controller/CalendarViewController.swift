import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    
    private var locationInfo:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(locationInfo)
    }
    
    func setupLocation(_ info:String) {
        locationInfo = info
    }
}
