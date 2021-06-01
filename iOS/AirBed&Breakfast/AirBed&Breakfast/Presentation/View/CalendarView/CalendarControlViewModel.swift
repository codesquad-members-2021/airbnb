//
//  CalendarControlViewModel.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/06/01.
//

import UIKit
import HorizonCalendar

class CalendarControlViewModel {
    
    private var currentYear: Int?
    private var currentMonth: Int?
    private var currentDay: Int?
    
    private var lowerDay: Day?
    private var upperDay: Day?
    
    init() {
        self.currentYear = Int(Date().year)
        self.currentMonth = Int(Date().month)
        self.currentDay = Int(Date().day)
    }
    
    public func updateDaySelection(with newDay: Day, completion: (CalendarViewContent) -> ()) {
        if self.lowerDay == nil && self.upperDay == nil {
            self.lowerDay = newDay
        } else if self.lowerDay != nil && self.upperDay == nil {
            if newDay <= self.lowerDay! {
                self.lowerDay = newDay
            } else {
                self.upperDay = newDay
                completion(makeContentWithHighlightRange())
                return
            }
        } else {
            self.lowerDay = newDay
            self.upperDay = nil
        }
        
        completion(makeContent())
    }
    
    public func selectedDates(completion: (Date, Date) -> ()) {
        guard let lowerDate = Calendar.current.date(from: DateComponents(year: self.lowerDay?.components.year, month: self.lowerDay?.components.month, day: self.lowerDay?.components.day)) else { return }
        
        guard let upperDate = Calendar.current.date(from: DateComponents(year: self.upperDay?.components.year, month: self.upperDay?.components.month, day: self.upperDay?.components.day)) else { return }
        
        completion(lowerDate, upperDate)
    }
    
    
    public func clearDaySelection(completion: (CalendarViewContent)-> ()) {
        self.lowerDay = nil
        self.upperDay = nil
        completion(makeContent())
    }
    
    public func isValidDayToSelect(day: Day) -> Bool {
        guard let currentYear = self.currentYear else { return false }
        guard let currentMonth = self.currentMonth else { return false }
        guard let currentDay = self.currentDay else { return false }
        
        guard let yearToSelect = day.components.year else { return false }
        guard let monthToSelect = day.components.month else { return false }
        guard let dayToSelect = day.components.day else { return false }
        
        if yearToSelect > currentYear {
            return true
        } else if monthToSelect > currentMonth {
            return true
        } else if monthToSelect == currentMonth && dayToSelect >= currentDay {
            return true
        } else {
            return false
        }
    }
    
    public func makeDefaultContent() -> CalendarViewContent {
        let calendar = Calendar.current
        
        let startDate = calendar.date(from: DateComponents(year: currentYear, month: currentMonth, day: 01))!
        let endDate = calendar.date(from: DateComponents(year: (currentYear ?? Int.max) + 1, month: currentMonth, day: 31))!
        
        return CalendarViewContent(
            calendar: calendar,
            visibleDateRange: startDate...endDate,
            monthsLayout: .vertical(options: VerticalMonthsLayoutOptions()))
            
            .withDayItemModelProvider { day in
                let invariantViewProperties: DayLabel.InvariantViewProperties = .init(
                    font: UIFont.systemFont(ofSize: 18),
                    textColor: .darkGray,
                    backgroundColor: .clear)
                
                return CalendarItemModel<DayLabel>(
                    invariantViewProperties: invariantViewProperties,
                    viewModel: .init(day: day))
                }
        
            .withInterMonthSpacing(24)
            .withVerticalDayMargin(8)
            .withHorizontalDayMargin(8)
    }
    
    private func makeContent() -> CalendarViewContent {
        let calendar = Calendar.current
        
        let startDate = calendar.date(from: DateComponents(year: currentYear, month: currentMonth, day: 01))!
        let endDate = calendar.date(from: DateComponents(year: (currentYear ?? Int.max) + 1, month: currentMonth, day: 31))!
        
        return CalendarViewContent(
            calendar: calendar,
            visibleDateRange: startDate...endDate,
            monthsLayout: .vertical(options: VerticalMonthsLayoutOptions()))
            
            .withDayItemModelProvider { day in
                var invariantViewProperties: DayLabel.InvariantViewProperties = .init(
                    font: UIFont.systemFont(ofSize: 18),
                    textColor: .darkGray,
                    backgroundColor: .clear)
                
                if self.isValidDayToSelect(day: day) {
                    if day == self.lowerDay {
                        invariantViewProperties.textColor = .white
                        invariantViewProperties.backgroundColor = .blue
                    } else if day == self.upperDay {
                        invariantViewProperties.textColor = .white
                        invariantViewProperties.backgroundColor = .red
                    }
                } else {
                    invariantViewProperties.textColor = UIColor.red
                }
                
                return CalendarItemModel<DayLabel>(
                    invariantViewProperties: invariantViewProperties,
                    viewModel: .init(day: day))
                }
        
            .withInterMonthSpacing(24)
            .withVerticalDayMargin(8)
            .withHorizontalDayMargin(8)
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
    
}
