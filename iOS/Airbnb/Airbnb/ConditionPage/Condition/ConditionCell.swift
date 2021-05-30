//
//  ConditionCell.swift
//  Airbnb
//
//  Created by Lia on 2021/05/31.
//

import UIKit

class ConditionCell: UITableViewCell {

    static let reuseIdentifier = "ConditionCell"
    let conditionLabel = UILabel()
    let detailLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
}


extension ConditionCell {
    
    private func configure() {
        addSubview(conditionLabel)
        addSubview(detailLabel)
        conditionLabel.translatesAutoresizingMaskIntoConstraints = false
        conditionLabel.adjustsFontForContentSizeCategory = true
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.adjustsFontForContentSizeCategory = true
        detailLabel.textColor = .gray
        
        let inset = CGFloat(10)
        NSLayoutConstraint.activate([
            conditionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            conditionLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            detailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            detailLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
}
