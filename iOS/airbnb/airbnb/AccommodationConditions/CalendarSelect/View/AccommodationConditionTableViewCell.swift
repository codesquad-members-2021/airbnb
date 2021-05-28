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
    
    lazy var conditionTitle: UILabel = {
        let conditionTitle = UILabel()
        conditionTitle.translatesAutoresizingMaskIntoConstraints = false
        return conditionTitle
    }()
    
    lazy var conditionContent: UILabel = {
        let conditionContent = UILabel()
        conditionContent.textColor = .gray
        conditionContent.font = .systemFont(ofSize: 17, weight: .semibold)
        conditionContent.translatesAutoresizingMaskIntoConstraints = false
        return conditionContent
    }()
    
    private lazy var labelInset: CGFloat = {
        let tableWidth = frame.width
        return tableWidth * 0.065
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
        NSLayoutConstraint.activate([
            conditionTitle.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: labelInset),
            conditionTitle.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }
    
    private func addConditionContent() {
        self.addSubview(conditionContent)
        NSLayoutConstraint.activate([
            conditionContent.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -labelInset),
            conditionContent.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ])
    }

}
