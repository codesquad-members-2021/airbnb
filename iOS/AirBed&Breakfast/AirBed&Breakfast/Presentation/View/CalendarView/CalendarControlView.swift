//
//  CalendarViewManager.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/24.
//

import UIKit
import HorizonCalendar

protocol DateInfoReceivable {
    func updateDateInfo(date: Date, isLowerDate: Bool)
}

class CalendarControlView: UIView {
    
    private let currentYear = Int(Date().year)!
    private let nextYear = Int(Date().year)! + 1
    private let currentMonth = Int(Date().month)!
    private let currentDay = Int(Date().day)!
    
    private var calendarView: CalendarView! = nil
    public var dateInfoReceivable: DateInfoReceivable?
    
    private var lowerDay: Day? {
        willSet{
            if newValue == nil { return }
            guard let lowerDate = Calendar.current.date(from: DateComponents(year: newValue?.components.year, month: newValue?.components.month, day: newValue?.components.day)) else { return }
            dateInfoReceivable?.updateDateInfo(date: lowerDate, isLowerDate: true)
        }
    }
    
    private var upperDay: Day? {
        willSet{
            if newValue == nil { return }
            guard let upperDate = Calendar.current.date(from: DateComponents(year: newValue?.components.year, month: newValue?.components.month, day: newValue?.components.day)) else { return }
            dateInfoReceivable?.updateDateInfo(date: upperDate, isLowerDate: false)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCalendarView()
        setDaySelectionHandler()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureCalendarView()
        setDaySelectionHandler()
    }
    
    deinit {
        print("Calendar View Has Been Removed")
    }
    
    func setDaySelectionHandler() {
        self.calendarView.daySelectionHandler = { [weak self] day in
            guard let self = self else { return }
        
            if day.components.year == self.currentYear && day.components.month! <= self.currentMonth && day.components.day! < self.currentDay {
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
    
    private func configureCalendarView() {
        self.calendarView = CalendarView(initialContent: makeContent())
        self.addSubview(calendarView)
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
          calendarView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
          calendarView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
          calendarView.topAnchor.constraint(equalTo: self.topAnchor),
          calendarView.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
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
    
    private func makeContent() -> CalendarViewContent {
        let calendar = Calendar.current
        
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
                
                if day.components.year == self.currentYear && day.components.month! <= self.currentMonth && day.components.day! < self.currentDay {
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
    
    public func clearCalendarView() {
        self.lowerDay = nil
        self.upperDay = nil
        
        self.calendarView.setContent(makeContent())
    }
    
}
