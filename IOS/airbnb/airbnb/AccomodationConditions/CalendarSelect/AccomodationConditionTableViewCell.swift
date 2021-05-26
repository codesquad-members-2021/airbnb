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
    
    private var conditionTitle = UILabel()
    private var conditionContent = UILabel()
    
    func configure() {
        self.addSubview(conditionTitle)
        conditionTitle.text = "테스트"
        conditionTitle.translatesAutoresizingMaskIntoConstraints = false
        conditionTitle.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        conditionTitle.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        
        self.addSubview(conditionContent)
        conditionContent.text = "test"
        conditionContent.textColor = .gray
        conditionContent.translatesAutoresizingMaskIntoConstraints = false
        conditionContent.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        conditionContent.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
    }

}
