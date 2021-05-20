//
//  BestDestinationsTableHeaderView.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/20.
//

import UIKit

class BestDestinationsTableHeaderView: UIView {

    let titleLabel = UILabel(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureTitleLabel()
    }
    
    private func configureTitleLabel() {
        self.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = UIFont.systemFont(ofSize: 17.0, weight: .semibold)
        titleLabel.textColor = UIColor(named: "Black")
        titleLabel.text = "근처의 인기 여행지"
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                constant: 16.0),
            titleLabel.trailingAnchor.constraint(greaterThanOrEqualTo: self.trailingAnchor,
                                                 constant: -16.0),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
