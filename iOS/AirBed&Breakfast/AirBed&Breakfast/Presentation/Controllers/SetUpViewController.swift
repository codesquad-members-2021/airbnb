//
//  DateSelectionViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit
import HorizonCalendar

class SetUpViewController: UIViewController {

    private var reservationDetailViewController: ReservationDetailViewControllerProtocol!
    private var calendarControlView: CalendarControlView! = nil
    private var context: String! {
        didSet {
            guard self.context != nil else { return }
            reservationDetailViewController.setContext(with: self.context)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCelendarControlView()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containerViewSegue" {
            reservationDetailViewController = segue.destination as? ReservationDetailViewController
        }
    }
    
    public func configureCelendarControlView() {
        self.context = String(describing: CalendarControlView.self)
        
        self.calendarControlView = CalendarControlView()
        view.addSubview(calendarControlView)
        calendarControlView.translatesAutoresizingMaskIntoConstraints = false
        
        let reservationDetailViewHeightRatioToView = 0.3
        NSLayoutConstraint.activate([
            calendarControlView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calendarControlView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calendarControlView.topAnchor.constraint(equalTo: view.topAnchor),
            calendarControlView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: CGFloat((1.0 - reservationDetailViewHeightRatioToView)))
        ])
        
        calendarControlView?.dateInfoReceivable = self
    }
    
    public func deinitializeCalendarControlView() {
        self.calendarControlView.dateInfoReceivable = nil
        self.calendarControlView.removeConstraints(self.calendarControlView.constraints)
        self.calendarControlView.removeFromSuperview()
        self.calendarControlView = nil
        self.context = nil
    }
}

extension SetUpViewController: DateInfoReceivable {
    
    func updateDateInfo(date: Date, isLowerDate: Bool) {
        reservationDetailViewController.changeDateRange(date: date, isLowerDay: isLowerDate)
    }
    
}
    

