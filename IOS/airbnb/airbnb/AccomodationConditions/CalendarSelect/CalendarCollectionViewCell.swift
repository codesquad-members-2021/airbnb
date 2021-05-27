//
//  CalendarCollectionViewCell.swift
//  airbnb
//
//  Created by Song on 2021/05/26.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    private weak var day: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure() {
        let day = UILabel()
        self.addSubview(day)
        self.day = day
        day.text = "39"
        day.textAlignment = .center
        day.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            day.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            day.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }
    
}
