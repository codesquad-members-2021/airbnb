//
//  DateSelectionViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit
import HorizonCalendar

class DateSelectionViewController: UIViewController {

    private let id = String(describing: DateSelectionViewController.self)
    private var reservationViewController: ReservationDetailViewControllerProtocol!
    private var calendarView: CalendarView! = nil
    private var lowerDay: Day? {
        willSet{
            if newValue == nil { return }
            guard let lowerDate = Calendar.current.date(from: DateComponents(year: newValue?.components.year, month: newValue?.components.month, day: newValue?.components.day)) else { return }
            reservationViewController.changeDateRange(date: lowerDate, isLowerDay: true)
        }
    }
    private var upperDay: Day? {
        willSet{
            if newValue == nil { return }
            guard let upperDate = Calendar.current.date(from: DateComponents(year: newValue?.components.year, month: newValue?.components.month, day: newValue?.components.day)) else { return }
            reservationViewController.changeDateRange(date: upperDate, isLowerDay: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCelendarView()
        
        self.calendarView.daySelectionHandler = { [weak self] day in
            guard let self = self else { return }
            
            let currentYear = Int(Date().year)
            let currentMonth = Int(Date().month)!
            let currentDay = Int(Date().day)!
            
            if day.components.year == currentYear && day.components.month! <= currentMonth && day.components.day! < currentDay {
                return
            }
            
            if self.lowerDay == nil && self.upperDay == nil {
                self.lowerDay = day
                
            } else if self.lowerDay != nil && self.upperDay == nil {
                if day <= self.lowerDay! {
                    self.lowerDay = day
                } else {
                    self.upperDay = day
                }
                
            } else {
                self.lowerDay = day
                self.upperDay = nil
            }
            
            if self.lowerDay != nil && self.upperDay != nil {
                let newContent = self.makeContentWithHighlightRange()
                self.calendarView.setContent(newContent)
            } else {
                let newContent = self.makeContent()
                self.calendarView.setContent(newContent)
            }
        }
    }
    
    private func makeContentWithHighlightRange() -> CalendarViewContent {
        guard let lowerDate = Calendar.current.date(from: DateComponents(year: self.lowerDay?.components.year, month: self.lowerDay?.components.month, day: self.lowerDay?.components.day)) else { return makeContent()}
        guard let upperDate = Calendar.current.date(from: DateComponents(year: self.upperDay?.components.year, month: self.upperDay?.components.month, day: self.upperDay?.components.day)) else { return makeContent()}
        
        let dateRangeToHighlight = lowerDate...upperDate
        
        let newContent = self.makeContent().withDayRangeItemModelProvider(for: [dateRangeToHighlight]) { dayRangeLayoutContext in
            CalendarItemModel<DayRangeIndicatorView>(
                invariantViewProperties: .init(),
                viewModel: .init(framesOfDaysToHighlight: dayRangeLayoutContext.daysAndFrames.map { $0.frame }))
        }
        return newContent
    }
    
    private func configureCelendarView() {
        self.calendarView = CalendarView(initialContent: makeContent())
        view.addSubview(calendarView)
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        let reservationDetailViewHeightRatioToView = 0.3
        NSLayoutConstraint.activate([
          calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
          calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
          calendarView.topAnchor.constraint(equalTo: view.topAnchor),
          calendarView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: CGFloat((1.0 - reservationDetailViewHeightRatioToView)))
        ])
    }
    
    private func makeContent() -> CalendarViewContent {
        let calendar = Calendar.current
        
        let currentYear = Int(Date().year)
        let nextYear = Int(Date().year)! + 1
        let currentMonth = Int(Date().month)!
        let currentDay = Int(Date().day)!
        let startDate = calendar.date(from: DateComponents(year: currentYear, month: currentMonth, day: 01))!
        let endDate = calendar.date(from: DateComponents(year: nextYear, month: currentMonth, day: 31))!
        
        return CalendarViewContent(
            calendar: calendar,
            visibleDateRange: startDate...endDate,
            monthsLayout: .vertical(options: VerticalMonthsLayoutOptions()))
            
            .withDayItemModelProvider { day in
                var invariantViewProperties: DayLabel.InvariantViewProperties = .init(
                    font: UIFont.systemFont(ofSize: 18),
                    textColor: .darkGray,
                    backgroundColor: .clear)
                
                if day.components.year == currentYear && day.components.month! <= currentMonth && day.components.day! < currentDay {
                    invariantViewProperties.textColor = UIColor.red
                }
                
                if day == self.lowerDay {
                    invariantViewProperties.textColor = .white
                    invariantViewProperties.backgroundColor = .blue
                } else if day == self.upperDay {
                    invariantViewProperties.textColor = .white
                    invariantViewProperties.backgroundColor = .red
                }
                
                return CalendarItemModel<DayLabel>(
                    invariantViewProperties: invariantViewProperties,
                    viewModel: .init(day: day))
                }
        
            .withInterMonthSpacing(24)
            .withVerticalDayMargin(8)
            .withHorizontalDayMargin(8)
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containerViewSegue" {
            reservationViewController = segue.destination as? ReservationDetailViewController
            reservationViewController.setCurrentParentId(id: self.id)
        }
    }
    
    public func clearCalendarView() {
        self.lowerDay = nil
        self.upperDay = nil
        
        self.calendarView.setContent(makeContent())
    }
}
