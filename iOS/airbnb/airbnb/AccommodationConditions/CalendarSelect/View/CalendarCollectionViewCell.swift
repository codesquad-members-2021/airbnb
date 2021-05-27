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
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        self.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }

    func futureMode() {
        titleLabel.isHidden = false
        titleLabel.textColor = .black
        isUserInteractionEnabled = true
    }
    
    func pastMode() {
        titleLabel.isHidden = false
        titleLabel.textColor = .lightGray
        isUserInteractionEnabled = false
    }
    
    func emptyMode() {
        titleLabel.isHidden = true
        isUserInteractionEnabled = false
    }
    
}
