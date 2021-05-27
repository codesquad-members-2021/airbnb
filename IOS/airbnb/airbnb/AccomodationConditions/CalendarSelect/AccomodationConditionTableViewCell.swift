//
//  AccomodationConditionTableViewCell.swift
//  airbnb
//
//  Created by Song on 2021/05/26.
//

import UIKit

class AccomodationConditionTableViewCell: UITableViewCell {

    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    private weak var conditionTitle: UILabel?
    private weak var conditionContent: UILabel?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure() {
        let conditionTitle = UILabel()
        self.addSubview(conditionTitle)
        self.conditionTitle = conditionTitle
        conditionTitle.text = "테스트"
        conditionTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            conditionTitle.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            conditionTitle.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
        
        let conditionContent = UILabel()
        self.addSubview(conditionContent)
        self.conditionContent = conditionContent
        conditionContent.text = "test"
        conditionContent.textColor = .gray
        conditionContent.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            conditionContent.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            conditionContent.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }

}
