//
//  CalendarDateCell.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/25.
//

import UIKit

class CalendarDateCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: CalendarDateCell.self)
    
    private lazy var selectionBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.backgroundColor = .clear
        return view
    }()
    
     lazy var numberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textColor = .label
        return label
    }()
    
    private lazy var accessibilityDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.setLocalizedDateFormatFromTemplate("EEEE, MMMM d")
        return dateFormatter
    }()
    
    var day: Day? {
      didSet {
        guard let day = day else { return }

        numberLabel.text = day.number
        accessibilityLabel = accessibilityDateFormatter.string(from: day.date)
      }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        config()
    }
    
    override func layoutSubviews() {
      super.layoutSubviews()

      NSLayoutConstraint.deactivate(selectionBackgroundView.constraints)

      let size = traitCollection.horizontalSizeClass == .compact ?
        min(min(frame.width, frame.height) - 10, 60) : 45

      NSLayoutConstraint.activate([
        numberLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        numberLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

        selectionBackgroundView.centerYAnchor.constraint(equalTo: numberLabel.centerYAnchor),
        selectionBackgroundView.centerXAnchor.constraint(equalTo: numberLabel.centerXAnchor),
        selectionBackgroundView.widthAnchor.constraint(equalToConstant: size),
        selectionBackgroundView.heightAnchor.constraint(equalTo: selectionBackgroundView.widthAnchor)
      ])

      selectionBackgroundView.layer.cornerRadius = size / 2
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
      super.traitCollectionDidChange(previousTraitCollection)

      layoutSubviews()
    }
    
    func config(){
        isAccessibilityElement = true
        accessibilityTraits = .button
        
        contentView.addSubview(selectionBackgroundView)
        contentView.addSubview(numberLabel)
    }
    
}
