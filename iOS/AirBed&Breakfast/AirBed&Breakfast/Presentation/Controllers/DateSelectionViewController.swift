//
//  DateSelectionViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit
import HorizonCalendar

class DateSelectionViewController: UIViewController {

    private var reservationViewController: ReservationDetailViewControllerProtocol!
    private var calendarView: CalendarView! = nil
    private var lowerDay: Day?
    private var upperDay: Day?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCelendarView()
        
        self.calendarView.daySelectionHandler = { [weak self] day in
            guard let self = self else { return }
            
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
                let newContent = self.makeContentWithSelectedDay()
                self.calendarView.setContent(newContent)
            }
        }
    }
    
    func makeContentWithSelectedDay() -> CalendarViewContent {
        let newContent = self.makeContent().withDayItemModelProvider { day in
            var invariantViewProperties = DayLabel.InvariantViewProperties(
                font: UIFont.systemFont(ofSize: 18),
                textColor: .darkGray,
                backgroundColor: .clear)
            
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
        return newContent
    }
    
    func makeContentWithHighlightRange() -> CalendarViewContent {
        guard let lowerDate = Calendar.current.date(from: DateComponents(year: self.lowerDay?.components.year, month: self.lowerDay?.components.month, day: self.lowerDay?.components.day)) else { return makeContent()}
        guard let upperDate = Calendar.current.date(from: DateComponents(year: self.upperDay?.components.year, month: self.upperDay?.components.month, day: self.upperDay?.components.day)) else { return makeContent()}
        
        let dateRangeToHighlight = lowerDate...upperDate
        
        let newContent = self.makeContentWithSelectedDay().withDayRangeItemModelProvider(for: [dateRangeToHighlight]) { dayRangeLayoutContext in
            CalendarItemModel<DayRangeIndicatorView>(
                invariantViewProperties: .init(),
                viewModel: .init(framesOfDaysToHighlight: dayRangeLayoutContext.daysAndFrames.map { $0.frame }))
        }
        return newContent
    }
    
    func configureCelendarView() {
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
        
        let startDate = calendar.date(from: DateComponents(year: 2021, month: 01, day: 01))!
        let endDate = calendar.date(from: DateComponents(year: 2022, month: 12, day: 31))!
        
        return CalendarViewContent(
            calendar: calendar,
            visibleDateRange: startDate...endDate,
            monthsLayout: .vertical(options: VerticalMonthsLayoutOptions()))
            
            .withDayItemModelProvider { day in
                  CalendarItemModel<DayLabel>(
                    invariantViewProperties: .init(
                      font: UIFont.systemFont(ofSize: 18),
                      textColor: .darkGray,
                      backgroundColor: .clear),
                    viewModel: .init(day: day))
                }
        
            .withInterMonthSpacing(24)
            .withVerticalDayMargin(8)
            .withHorizontalDayMargin(8)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containerViewSegue" {
            reservationViewController = segue.destination as? ReservationDetailViewController
        }
    }
    
}
