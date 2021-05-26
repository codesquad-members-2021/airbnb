//
//  CalendarHeader.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import UIKit

class CalendarHeader: UICollectionReusableView {
    static let reuseIdentifier = String(describing: CalendarHeader.self)
    
    var monthLabel: UILabel = {
      let label = UILabel()
      label.translatesAutoresizingMaskIntoConstraints = false
      label.font = .systemFont(ofSize: 20, weight: .bold)
      label.text = "Month"
      label.accessibilityTraits = .header
      label.isAccessibilityElement = true
      return label
    }()
    
    private lazy var dateFormatter: DateFormatter = {
      let dateFormatter = DateFormatter()
      dateFormatter.calendar = Calendar(identifier: .gregorian)
      dateFormatter.locale = Locale.autoupdatingCurrent
      dateFormatter.setLocalizedDateFormatFromTemplate("MMMM y")
      return dateFormatter
    }()

    private var baseDate: Date
    
    override init(frame: CGRect) {
        self.baseDate = Date()
        super.init(frame: frame)
        addSubview(monthLabel)
        monthLabel.text = dateFormatter.string(from: baseDate)
    }
    required init?(coder: NSCoder) {
        self.baseDate = Date()
        super.init(coder: coder)
        addSubview(monthLabel)
        monthLabel.text = dateFormatter.string(from: baseDate)
    }
    
    override func layoutSubviews() {
      super.layoutSubviews()

      NSLayoutConstraint.activate([
        monthLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
        monthLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        monthLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
        monthLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
      ])
    }
}
