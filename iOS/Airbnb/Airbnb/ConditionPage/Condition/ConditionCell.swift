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
        detailLabel.textAlignment = .right
        
        let inset = CGFloat(11)
        NSLayoutConstraint.activate([
            conditionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            conditionLabel.topAnchor.constraint(equalTo: topAnchor, constant: inset),
            conditionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset),
            detailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            detailLabel.topAnchor.constraint(equalTo: topAnchor, constant: inset),
            detailLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset)
        ])
    }
    
    func fillUI(with cellInfo: CellInfo) {
        conditionLabel.text = cellInfo.title
        detailLabel.text = cellInfo.detail
    }
    
}
