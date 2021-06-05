//
//  DayCell.swift
//  Airbnb
//
//  Created by Lia on 2021/05/27.
//

import UIKit

enum SelectedType {
    case outDated
    case one
    case checkIn
    case checkOut
    case interval
    case normal
    case nothing
}


class DayCell: UICollectionViewCell {
    
    static let reuseIdentifier = "DayCell"
    private let dayLabel = UILabel()
    private(set) var date: Date!
    
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
        dayLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
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
        var backgroundView = UIView()
        let highlightLayer = CALayer()
        let circleLayer = CALayer()
       
        self.backgroundView = backgroundView
                
        let bound = backgroundView.bounds
        circleLayer.frame = bound
        circleLayer.backgroundColor = #colorLiteral(red: 0.1568627451, green: 0.1568627451, blue: 0.1568627451, alpha: 1).cgColor
        circleLayer.masksToBounds = true
        circleLayer.cornerRadius = backgroundView.frame.width / 2
        
        switch selectedType {
        case .one:
            dayLabel.textColor = .white
            backgroundView = UIView()
            self.backgroundView = backgroundView
            backgroundView.layer.addSublayer(circleLayer)
        case .checkIn:
            dayLabel.textColor = .white
            backgroundView = UIView()
            self.backgroundView = backgroundView
            highlightLayer.frame = CGRect(x: bound.width/2, y: 0, width: bound.width/2, height: bound.height)
            highlightLayer.backgroundColor = UIColor.systemGray5.cgColor

            backgroundView.layer.addSublayer(highlightLayer)
            backgroundView.layer.addSublayer(circleLayer)
        case .checkOut:
            dayLabel.textColor = .white
            backgroundView = UIView()
            self.backgroundView = backgroundView
            highlightLayer.frame = CGRect(x: 0, y: 0, width: bound.width/2, height: bound.height)
            highlightLayer.backgroundColor = UIColor.systemGray5.cgColor

            backgroundView.layer.addSublayer(highlightLayer)
            backgroundView.layer.addSublayer(circleLayer)
        case .interval:
            dayLabel.textColor = .black
            backgroundView = UIView()
            self.backgroundView = backgroundView
            backgroundView.backgroundColor = UIColor.systemGray5
        case .outDated:
            dayLabel.textColor = .gray
            backgroundView = UIView()
        case .normal:
            dayLabel.textColor = .black
            backgroundView = UIView()
        case .nothing:
            backgroundView = UIView()
        }
        
    }
    
}
