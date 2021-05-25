import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!
    @IBOutlet var calendarView: FSCalendar!
    
    private var locationInfo:String?
    
    private lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
    }
    
    func setupLocation(_ info:String) {
        locationInfo = info
    }
}

private extension CalendarViewController {
    
    private func setupMainView() {
        setupCalendarView()
        setupButton()
    }
    
    private func setupCalendarView() {
        calendarView.allowsMultipleSelection = true
        calendarView.swipeToChooseGesture.isEnabled = true
        calendarView.appearance.selectionColor = UIColor.systemGray3
        calendarView.appearance.todayColor = UIColor.black
        calendarView.appearance.weekdayTextColor = UIColor.systemGray
        calendarView.delegate = self
        calendarView.dataSource = self
    }
    
    private func setupButton() {
        backButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
}

extension CalendarViewController: FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(dateFormatter.string(from: date))
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(dateFormatter.string(from: date))
    }
}
