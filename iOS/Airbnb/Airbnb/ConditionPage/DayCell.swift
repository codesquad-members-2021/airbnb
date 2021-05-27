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
        case interval
    }
    
    static let reuseIdentifier = "DayCell"
    let dayLabel = UILabel()
    let backView = UIView()
    private(set) var date: Date!
    
    override var isSelected: Bool {
        didSet {
            if !isSelected && selectedType != .interval {
                dayLabel.textColor = .black
                let backgroundView = UIView()
                self.selectedBackgroundView = backgroundView
            }
        }
    }
    
    var selectedType: SelectedType! {
        didSet {
            if date != nil {
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
        addSubview(backView)
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
       
        self.selectedBackgroundView = backgroundView
                
        let bound = backgroundView.bounds
        circleLayer.frame = bound
        circleLayer.backgroundColor = UIColor.black.cgColor
        circleLayer.masksToBounds = true
        circleLayer.cornerRadius = backgroundView.frame.width / 2
        
        switch selectedType {
        case .one:
            dayLabel.textColor = .white
            backgroundView.layer.addSublayer(circleLayer)
        case .min:
            dayLabel.textColor = .white
            highlightLayer.frame = CGRect(x: bound.width/2, y: 0, width: bound.width/2, height: bound.height)
            highlightLayer.backgroundColor = UIColor.lightGray.cgColor

            backgroundView.layer.addSublayer(highlightLayer)
            backgroundView.layer.addSublayer(circleLayer)
        case .max:
            dayLabel.textColor = .white
            highlightLayer.frame = CGRect(x: 0, y: 0, width: bound.width/2, height: bound.height)
            highlightLayer.backgroundColor = UIColor.lightGray.cgColor

            backgroundView.layer.addSublayer(highlightLayer)
            backgroundView.layer.addSublayer(circleLayer)
        case .interval:
            isSelected = true
            backgroundView.backgroundColor = .lightGray
            print("😡 running interval : ", dayLabel.text ?? "")
        }
        
    }
    
}
