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
    
    private var day = UILabel()
    
    func configure() {
        self.addSubview(day)
        day.text = "39"
        day.translatesAutoresizingMaskIntoConstraints = false
        day.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        day.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
    }
    
}
