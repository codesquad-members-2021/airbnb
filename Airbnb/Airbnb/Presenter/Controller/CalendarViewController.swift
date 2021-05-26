import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!
    @IBOutlet var calendarView: FSCalendar!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var skipDeleteButton: UIButton!
    
    private var dateStroage:[String] = []
    private let viewModel = CalendarViewModel()
    
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
        viewModel.setupLocationInfo(info)
    }
}

private extension CalendarViewController {
    
    private func setupMainView() {
        setupCalendarView()
        setupButton()
        setupLabel()
    }
    
    private func setupCalendarView() {
        calendarView.allowsMultipleSelection = true
        calendarView.swipeToChooseGesture.isEnabled = true
        calendarView.appearance.headerDateFormat = "YYYY년 M월"
        calendarView.appearance.headerMinimumDissolvedAlpha = 0.0
        calendarView.appearance.headerTitleColor = UIColor.black
        calendarView.appearance.selectionColor = UIColor.systemGray3
        calendarView.appearance.todayColor = UIColor.black
        calendarView.appearance.weekdayTextColor = UIColor.systemGray
        calendarView.scrollDirection = .vertical
        calendarView.pagingEnabled = false
        calendarView.delegate = self
        calendarView.dataSource = self
    }
    
    private func setupButton() {
        backButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupLabel() {
        locationLabel.text = viewModel.getLocationInfo()
    }
}

extension CalendarViewController: FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        dateStroage.append(dateFormatter.string(from: date))
        let checkIn = dateStroage.min() ?? ""
        let checkOut = dateStroage.max() ?? ""
        if checkIn == checkOut {
            dateLabel.text = "\(checkIn) ~"
        } else {
            dateLabel.text = "\(checkIn) ~ \(checkOut)"
        }
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let selectedDate = dateFormatter.string(from: date)
        if let index = dateStroage.firstIndex(of: selectedDate) {
            dateStroage.remove(at: index)
        }
        let checkIn = dateStroage.min() ?? ""
        let checkOut = dateStroage.max() ?? ""
        if checkIn == checkOut {
            dateLabel.text = "\(checkIn) ~"
        } else {
            dateLabel.text = "\(checkIn) ~ \(checkOut)"
        }
    }
    
    func calendar(_ calendar: FSCalendar, shouldSelect date: Date, at monthPosition: FSCalendarMonthPosition) -> Bool {
        if date.compare(Date().addingTimeInterval(-86400)) == .orderedAscending {
            return false
        } else {
            return true
        }
    }
    
    func calendar(_ calendar: FSCalendar, appearance: FSCalendarAppearance, titleDefaultColorFor date: Date) -> UIColor? {
        if date.compare(Date()) == .orderedAscending {
            return .systemGray3
        } else {
            return .black
        }
    }
}

extension CalendarViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height/4
    }
}
