//
//  DayCell.swift
//  Airbnb
//
//  Created by Lia on 2021/05/27.
//

import UIKit

class DayCell: UICollectionViewCell {
    
    enum SelectedType {
        case one
        case min
        case max
    }
    
    static let reuseIdentifier = "DayCell"
    let dayLabel = UILabel()
    private(set) var date: Date!
    
    override var isSelected: Bool {
        didSet {
            if date != nil && !self.isSelected {
                dayLabel.textColor = .black
                let backgroundView = UIView()
                self.selectedBackgroundView = backgroundView
            }
        }
    }
    
    var selectedType: SelectedType! {
        didSet {
            if self.isSelected {
                updateUI(selectedType: self.selectedType)
            }
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}


extension DayCell {
    
    private func configure() {
        addSubview(dayLabel)
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        dayLabel.adjustsFontForContentSizeCategory = true
        dayLabel.font = UIFont.preferredFont(forTextStyle: .body)
        dayLabel.textAlignment = .center
        
        let inset = CGFloat(1)
        NSLayoutConstraint.activate([
            dayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            dayLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            dayLabel.topAnchor.constraint(equalTo: topAnchor, constant: inset),
            dayLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset)
        ])

    }
    
    func fillInfo(with date: Date?) {
        self.date = date
        let day = date == nil ? "" : "\(date!.day)"
        self.dayLabel.text = day
    }
    
    func updateUI(selectedType: SelectedType) {
        let backgroundView = UIView()
        let highlightLayer = CALayer()
        let circleLayer = CALayer()
        
        dayLabel.textColor = .white
        self.selectedBackgroundView = backgroundView
                
        switch selectedType {
        case .one:
            break
        case .min:
            let b = backgroundView.bounds
            highlightLayer.frame = CGRect(x: b.width/2, y: 0, width: b.width/2, height: b.height)
            highlightLayer.backgroundColor = UIColor.lightGray.cgColor
            backgroundView.layer.addSublayer(highlightLayer)
        case .max:
            let b = backgroundView.bounds
            highlightLayer.frame = CGRect(x: 0, y: 0, width: b.width/2, height: b.height)
            highlightLayer.backgroundColor = UIColor.lightGray.cgColor
            backgroundView.layer.addSublayer(highlightLayer)
        }
        
        circleLayer.frame = backgroundView.bounds
        circleLayer.backgroundColor = UIColor.black.cgColor
        circleLayer.masksToBounds = true
        circleLayer.cornerRadius = backgroundView.frame.width / 2
        
        backgroundView.layer.addSublayer(circleLayer)
    }
    
}
