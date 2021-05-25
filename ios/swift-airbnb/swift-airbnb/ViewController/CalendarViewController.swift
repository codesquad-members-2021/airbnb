
import UIKit
import FSCalendar

class CalendarViewController: UIViewController {

    @IBOutlet weak var calendarView: FSCalendar!
    @IBOutlet weak var informationView: InformationView!
    
    private let tabBarView = TabBarView()
    
    private var dayArray = [Date]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCalendar()
        
        navigationItem.title = "숙소 찾기"
        configureDelegateAndDataSource()
    }
    
    func configureCalendar() {
        calendarView.appearance.weekdayTextColor = UIColor.black
        calendarView.appearance.headerTitleColor = UIColor.black
        calendarView.appearance.selectionColor = UIColor(red: 38/255, green: 153/255, blue: 251/255, alpha: 1)
        calendarView.allowsMultipleSelection = true
        calendarView.swipeToChooseGesture.isEnabled = true
        calendarView.scrollEnabled = true
        calendarView.scrollDirection = .vertical
    }
    
    func configureDelegateAndDataSource() {
        calendarView.delegate = self
        calendarView.dataSource = self
    }

}

extension CalendarViewController: FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    
    // 날짜 선택 시 콜백 메소드
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        dayArray.append(date)
        informationView.InputCheckLabel(dayArr: dayArray)
    }
    // 날짜 선택 해제 시 콜백 메소드
    public func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
//        print(dateFormatter.string(from: date) + " 해제됨")
        dayArray.remove(at: dayArray.firstIndex(of: date) ?? 0)
    }
}
