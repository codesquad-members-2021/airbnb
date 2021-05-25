//
//  DateViewController.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/24.
//

import UIKit
import FSCalendar

final class DateViewController: UIViewController {

    @IBOutlet weak var calendarView: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendarView.delegate = self
        calendarView.dataSource = self
        setUpCalendarView()
        navigationItem.title = "숙소 찾기"
        tabBarController?.tabBar.isHidden = false
    }
 
    private func setUpCalendarView() {
        calendarView.allowsMultipleSelection = true
        calendarView.swipeToChooseGesture.isEnabled = true
        calendarView.scrollDirection = .vertical
        calendarView.appearance.headerDateFormat = "YYYY년 M월"
        calendarView.appearance.headerTitleColor = .black
        calendarView.locale = Locale(identifier: "ko_KR")
    }
}

extension DateViewController: FSCalendarDelegate {
    
}

extension DateViewController: FSCalendarDataSource {
    
}
