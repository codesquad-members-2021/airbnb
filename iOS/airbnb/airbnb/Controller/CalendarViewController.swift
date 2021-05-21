//
//  CallenderViewController.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/20.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    
    @IBOutlet weak var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        self.calendar.scrollDirection = .vertical
        self.calendar.calculator
        
        calendar.appearance.titleDefaultColor = .black
        calendar.appearance.titleWeekendColor = .red
        calendar.appearance.headerTitleColor = .systemPink
        calendar.appearance.weekdayTextColor = .orange
        
        calendar.appearance.headerDateFormat = "YYYY년 M월"
        calendar.locale = Locale(identifier: "ko_KR")
    }
}

extension CalendarViewController: FSCalendarDelegate {
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        performDateSelect(calendar, date: date)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        calendar.select(date)
    }
    
    func calendar(_ calendar: FSCalendar, shouldDeselect date: Date, at monthPosition: FSCalendarMonthPosition) -> Bool {
        performDateDeselect(calendar, date: date)
        return true
    }
    
    private func performDateDeselect(_ calender: FSCalendar, date: Date) {
        calendar.selectedDates.forEach({
            calendar.deselect($0)
        })
    }
    
    private func performDateSelect(_ calender: FSCalendar, date: Date) {
        let sorted = calendar.selectedDates.sorted { $0 < $1 }
        
        if sorted.count > 1 && date == sorted.first {
            performDateDeselect(calendar, date: date)
            calendar.select(date)
            return
        }
        
        if let firstData = sorted.first,
           let lastData = sorted.last {
            let ranges = dateRange(from: firstData, to: lastData)
            ranges.forEach {
                calendar.select($0)
            }
        }
    }
    
    func dateRange(from: Date, to: Date) -> [Date] {
        if from > to { return [Date]() }
        
        var dateArray = [Date]()
        var tempDate = from
        
        while tempDate < to {
            tempDate = Calendar.current.date(byAdding: .day, value: 1, to: tempDate) ?? Date()
            dateArray.append(tempDate)
        }
        return dateArray
    }
}
