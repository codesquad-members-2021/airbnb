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
    
    func configure(day: String) {
        day.isEmpty ? empty() : show(dayText: day)
    }
    
    func updateLabel(text: String) {
        dayLabel.text = text.components(separatedBy: "-")[2]
    }
    
    func empty() {
        self.isHidden = true
    }
    
    func show(dayText: String) {
        self.isHidden = false
        updateLabel(text: dayText)
    }
}
