//
//  MonthHeaderCollectionViewCell.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import UIKit

class MonthHeaderCollectionViewCell: UICollectionViewCell {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    private weak var month: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure() {
        let month = UILabel()
        self.addSubview(month)
        self.month = month
        month.text = "2021년 5월"
        month.textAlignment = .left
        month.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            month.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            month.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }
    
}
