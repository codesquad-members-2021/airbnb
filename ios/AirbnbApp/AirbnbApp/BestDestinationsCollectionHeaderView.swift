//
//  BestDestinationsCollectionHeaderView.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/20.
//

import UIKit

class BestDestinationsCollectionHeaderView: UICollectionReusableView {
    static let reuseIdentifier = String(describing: BestDestinationsCollectionHeaderView.self)
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
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titleLabel)
        titleLabel.font = UIFont.systemFont(ofSize: 17.0, weight: .semibold)
        titleLabel.textColor = UIColor(named: "Black")
        titleLabel.text = "근처의 인기 여행지"
        let inset = CGFloat(16)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset),
            titleLabel.trailingAnchor.constraint(greaterThanOrEqualTo: self.trailingAnchor, constant: -inset),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
