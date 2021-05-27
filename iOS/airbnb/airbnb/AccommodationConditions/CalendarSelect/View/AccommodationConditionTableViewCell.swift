//
//  AccomodationConditionTableViewCell.swift
//  airbnb
//
//  Created by Song on 2021/05/26.
//

import UIKit

class AccommodationConditionTableViewCell: UITableViewCell {

    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    private lazy var conditionTitle: UILabel = {
        let conditionTitle = UILabel()
        return conditionTitle
    }()
    
    private lazy var conditionContent: UILabel = {
        let conditionContent = UILabel()
        conditionContent.textColor = .gray
        return conditionContent
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        addConditionTitle()
        addConditionContent()
    }
    
    private func addConditionTitle() {
        self.addSubview(conditionTitle)
        conditionTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            conditionTitle.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            conditionTitle.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }
    
    private func addConditionContent() {
        self.addSubview(conditionContent)
        conditionContent.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            conditionContent.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            conditionContent.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }

}
