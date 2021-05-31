//
//  CalendarViewController.swift
//  swift-airbnb
//
//  Created by user on 2021/05/28.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    
    @IBOutlet var calendar: FSCalendar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calendar.scrollEnabled = true
        calendar.scrollDirection = .vertical
        calendar.appearance.headerDateFormat = "YYYY년 M월"
        
        calendar.locale = Locale(identifier: "ko_KR")
        calendar.allowsMultipleSelection = true
    }
    
}

extension CalendarViewController: FSCalendarDelegate {
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        
    }
}
