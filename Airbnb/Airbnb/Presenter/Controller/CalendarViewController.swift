import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!
    @IBOutlet var calendarView: FSCalendar!
    
    private var locationInfo:String?
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
    }
    
    private func setupButton() {
        backButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
}
