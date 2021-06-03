//
//  ResultSupplementaryView.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import UIKit

class RoomsSupplementaryView: UICollectionReusableView {

    static let reuseIdentifier = "ResultSupplymentaryView"
    
    let conditionLabel = UILabel()
    let roomCountLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}


extension RoomsSupplementaryView {
    
    private func configure() {
        addSubview(conditionLabel)
        addSubview(roomCountLabel)
        conditionLabel.translatesAutoresizingMaskIntoConstraints = false
        conditionLabel.adjustsFontForContentSizeCategory = true
        conditionLabel.font = UIFont.preferredFont(forTextStyle: .caption1)
        roomCountLabel.translatesAutoresizingMaskIntoConstraints = false
        roomCountLabel.adjustsFontForContentSizeCategory = true
        roomCountLabel.font = UIFont.preferredFont(forTextStyle: .title2)
        
        let inset = CGFloat(10)
        NSLayoutConstraint.activate([
            conditionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            conditionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            conditionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            conditionLabel.bottomAnchor.constraint(equalTo: roomCountLabel.topAnchor, constant: -inset),
            roomCountLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            roomCountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            roomCountLabel.topAnchor.constraint(equalTo: conditionLabel.bottomAnchor, constant: inset),
            roomCountLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset)
        ])
    }
    
    func fillUI(condition: String, resultNum: String) {
        self.conditionLabel.text = condition
        self.roomCountLabel.text = resultNum
    }
    
}
