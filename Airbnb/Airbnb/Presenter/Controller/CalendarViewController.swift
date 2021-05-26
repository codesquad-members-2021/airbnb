import UIKit
import RxSwift
import RxCocoa
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
    private var nextPage = BehaviorRelay(value: false)
    
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
        setupBackButton()
        setupButtonObserver()
        setupSkipDeleteButton()
        setupNextButton()
    }
    
    private func setupBackButton() {
        backButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupButtonObserver() {
        nextPage.asObservable()
            .subscribe(onNext: { [weak self] value in
                switch value {
                case true:
                    self?.nextButton.isEnabled = true
                    self?.nextButton.setTitleColor(UIColor.black, for: .normal)
                    self?.skipDeleteButton.setTitle("지우기", for: .normal)
                case false:
                    self?.nextButton.isEnabled = false
                    self?.nextButton.setTitleColor(UIColor.systemGray2, for: .normal)
                    self?.skipDeleteButton.setTitle("건너뛰기", for: .normal)
                }
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupSkipDeleteButton() {
        skipDeleteButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                switch self?.nextPage.value {
                case true:
                    self?.nextPage.accept(false)
                    self?.dateLabel.text = ""
                    self?.dateStroage.removeAll()
                    self?.calendarView.selectedDates.forEach {
                        self?.calendarView?.deselect($0)
                    }
                default:
                    print("다음뷰컨이동구현 날짜 데이터 전달X")
                }
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupNextButton() {
        nextButton.rx.tap
            .subscribe(onNext: { _ in
                print("다음뷰컨이동구현 날짜 데이터 전달O")
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupLabel() {
        viewModel.locationData
            .drive(locationLabel.rx.text)
            .disposed(by: rx.disposeBag)
        
        viewModel.dateInfo
            .drive(dateLabel.rx.text)
            .disposed(by: rx.disposeBag)
    }
}

extension CalendarViewController: FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        viewModel.append(date: dateFormatter.string(from: date))
        switch calendarView.selectedDates.count {
        case 0...1: nextPage.accept(false)
        default: nextPage.accept(true)
        }
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        viewModel.delete(date: dateFormatter.string(from: date))
        switch calendarView.selectedDates.count {
        case 0...1: nextPage.accept(false)
        default: nextPage.accept(true)
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
