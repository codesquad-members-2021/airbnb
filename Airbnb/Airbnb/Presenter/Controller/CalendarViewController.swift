import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    
    private var locationInfo:String?
    @IBOutlet var calendarView: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCalendarView()
    }
    
    func setupLocation(_ info:String) {
        locationInfo = info
    }
}

private extension CalendarViewController {
    
    private func setupCalendarView() {
        calendarView.allowsMultipleSelection = true
        calendarView.swipeToChooseGesture.isEnabled = true
        calendarView.appearance.selectionColor = UIColor.systemGray3
        calendarView.appearance.todayColor = UIColor.black
    }
}
