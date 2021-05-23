//
//  CalendarDayView.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import UIKit

class CalendarDayCell: UICollectionViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    private let dayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 12)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var selectCircleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = self.frame.width / 2
        view.backgroundColor = UIColor(named: "CityColor")
        view.isHidden = true
        return view
    }()
    
    private let halfLeftBackGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "SelectedRangeColor")
        view.isHidden = true
        return view
    }()
    
    private let halfRightBackGroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "SelectedRangeColor")
        view.isHidden = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setView()
    }
    
    private func setView() {
        addSubview(halfLeftBackGroundView)
        addSubview(halfRightBackGroundView)
        addSubview(selectCircleView)
        addSubview(dayLabel)
    
        NSLayoutConstraint.activate([
            halfLeftBackGroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            halfLeftBackGroundView.topAnchor.constraint(equalTo: self.topAnchor),
            halfLeftBackGroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            halfLeftBackGroundView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5),
            
            halfRightBackGroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            halfRightBackGroundView.topAnchor.constraint(equalTo: self.topAnchor),
            halfRightBackGroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            halfRightBackGroundView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5),
            
            selectCircleView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            selectCircleView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            selectCircleView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            selectCircleView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            dayLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            dayLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
        
    }
    
    func configure(day: Date?) {
        self.isHidden = hideDayCell(day: day)
        updateLabel(day: day)
    }
    
    private func updateLabel(day: Date?) {
        guard let date = day else {
             return
        }
        dayLabel.text = DateFormatter().convertDayString(date: date)
    }
    
    private func hideDayCell(day: Date?) -> Bool {
        day == nil ? true : false
        
    }
        
    func selectDay(dates: SequenceDates, day: Date?) {
        dates.start == day || dates.end == day ? selectedCell() : notSelectedCell(with: day)
    }
    
    private func selectedCell() {
        selectCircleView.isHidden = false
        self.dayLabel.textColor = .white
    }
    
    private func notSelectedCell(with day: Date?) {
        selectCircleView.isHidden = true
        guard let date = day else {
            return
        }
        self.dayLabel.textColor = changeOldDayLabelColor(with: date)
    }
    
    private func changeOldDayLabelColor(with day: Date) -> UIColor {
        day < Date() ? .lightGray : .black
    }
    
    func setupDaysRange(dates: SequenceDates, day: Date?) {
        guard let start = dates.start, let end = dates.end, let day = day else {
             changeHalfViewHidden(left: true, right: true)
             return
        }
        if start < day && end > day {
            changeHalfViewHidden(left: false, right: false)
        } else if start == day {
            changeHalfViewHidden(left: true, right: false)
        } else if end == day {
            changeHalfViewHidden(left: false, right: true)
        } else {
            changeHalfViewHidden(left: true, right: true)
        }
    }
    
    private func changeHalfViewHidden(left: Bool, right: Bool) {
        self.halfLeftBackGroundView.isHidden = left
        self.halfRightBackGroundView.isHidden = right
    }
}
