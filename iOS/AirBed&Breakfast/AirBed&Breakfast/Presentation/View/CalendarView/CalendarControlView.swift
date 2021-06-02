//
//  CalendarViewManager.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/24.
//

import UIKit
import HorizonCalendar

protocol DateInfoReceivable {
    func updateLowerDate(date: Date)
    func updateUpperDate(date: Date)
}

class CalendarControlView: UIView {
    
    private var viewModel: CalendarControlViewModel! = nil
    private var calendarView: CalendarView! = nil
    
    public var dateInfoReceivable: DateInfoReceivable?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.viewModel = CalendarControlViewModel()
        configureCalendarView()
        setDaySelectionHandler()
        bind()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.viewModel = CalendarControlViewModel()
        configureCalendarView()
        setDaySelectionHandler()
        bind()
    }
    
    private func bind() {
        self.viewModel.didSelectLowerDate { (newLowerDate) in
            self.dateInfoReceivable?.updateLowerDate(date: newLowerDate)
        }
        
        self.viewModel.didSelectUpperDate { (newUpperDate) in
            self.dateInfoReceivable?.updateUpperDate(date: newUpperDate)
        }
    }
    
    private func setDaySelectionHandler() {
        self.calendarView.daySelectionHandler = { [weak self] day in
            guard let self = self else { return }
            guard self.viewModel.isValidDayToSelect(day: day) else { return }
            
            self.viewModel.updateDaySelection(with: day) { (newCalendarContent) in
                self.calendarView.setContent(newCalendarContent)
            }
        }
    }
    
    private func configureCalendarView() {
        self.calendarView = CalendarView(initialContent: self.viewModel.makeDefaultContent())
        self.addSubview(calendarView)
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
          calendarView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
          calendarView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
          calendarView.topAnchor.constraint(equalTo: self.topAnchor),
          calendarView.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
    }
    
    public func clearCalendarView() {
        self.viewModel.clearDaySelection { (defaultCalendarContent) in
            self.calendarView.setContent(defaultCalendarContent)
        }
    }
    
}
