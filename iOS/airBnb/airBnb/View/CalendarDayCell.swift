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
        label.font = .systemFont(ofSize: 12)
        label.textAlignment = .center
        return label
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
        addSubview(dayLabel)
        dayLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        dayLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    func configure(day: Date?) {
        day == nil ? empty() : show(dayText: day)
    }
    
    func updateLabel(text: Date?) {
        guard let date = text else {
             return
        }
        dayLabel.text = DateFormatter().convertDayString(date: date)
    }
    
    func empty() {
        self.isHidden = true
    }
    
    func show(dayText: Date?) {
        self.isHidden = false
        updateLabel(text: dayText)
    }
    
    func setupDaysRange(dates: SequenceDates, day: Date?) {
        guard let start = dates.start, let end = dates.end, let day = day else {
            self.backgroundColor = .clear
             return
        }
        if start <= day && end >= day {
            self.backgroundColor = .brown
        } else {
            self.backgroundColor = .clear
        }
    }
}
