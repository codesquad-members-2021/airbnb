import UIKit
import RxSwift
import RxCocoa
import FSCalendar

final class CalendarViewController: UIViewController {
    
    @IBOutlet var calendarView: FSCalendar!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var skipDeleteButton: UIButton!
    
    private let viewModel = CalendarViewModel()
    private var nextPage = BehaviorRelay(value: false)
    private var (firstDate, lastDate): (Date?, Date?)
    private var datesRange: [Date]?
    
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
                    self?.viewModel.deleteAll()
                    self?.calendarView.selectedDates.forEach {
                        self?.calendarView?.deselect($0)
                    }
                default:
                    let nextVC = self?.storyboard?.instantiateViewController(withIdentifier: "PriceVC") as! PriceViewController
                    nextVC.modalTransitionStyle = .crossDissolve
                    nextVC.modalPresentationStyle = .fullScreen
                    self?.present(nextVC, animated: true, completion: nil)
                }
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupNextButton() {
        nextButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                let nextVC = self?.storyboard?.instantiateViewController(withIdentifier: "PriceVC") as! PriceViewController
                nextVC.modalTransitionStyle = .crossDissolve
                nextVC.modalPresentationStyle = .fullScreen
                nextVC.setupInfo(of: self?.locationLabel.text ?? "", of: self?.dateLabel.text ?? "")
                self?.present(nextVC, animated: true, completion: nil)
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
        viewModel.append(date: TransformManager.convertToString(from: date))
        switch calendarView.selectedDates.count {
        case 0...1: nextPage.accept(false)
        default: nextPage.accept(true)
        }
        
        if firstDate == nil {
            firstDate = date
            datesRange = [firstDate!]
            return
        }
        
        if firstDate != nil && lastDate == nil {
            if date <= firstDate! {
                calendar.deselect(firstDate!)
                firstDate = date
                datesRange = [firstDate!]
            }
            
            let range = datesRange(from: firstDate!, to: date)
            lastDate = range.last
            
            for day in range {
                calendar.select(day)
            }
            datesRange = range
            return
        }
        
        if firstDate != nil && lastDate != nil {
            for day in calendar.selectedDates {
                calendar.select(day)
            }
            
            lastDate = nil
            firstDate = nil
            datesRange = []
        }
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        viewModel.delete(date: TransformManager.convertToString(from: date))
        switch calendarView.selectedDates.count {
        case 0...1: nextPage.accept(false)
        default: nextPage.accept(true)
        }
        
        if firstDate != nil && lastDate != nil {
            for day in calendar.selectedDates {
                calendar.deselect(day)
            }
            
            lastDate = nil
            firstDate = nil
            datesRange = []
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
    
    func datesRange(from: Date, to: Date) -> [Date] {
        if from > to { return [Date]() }

        var tempDate = from
        var array = [tempDate]

        while tempDate < to {
            tempDate = Calendar.current.date(byAdding: .day, value: 1, to: tempDate)!
            array.append(tempDate)
        }

        return array
    }
}
