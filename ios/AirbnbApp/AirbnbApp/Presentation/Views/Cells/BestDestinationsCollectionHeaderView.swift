//
//  BestDestinationsCollectionHeaderView.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/20.
//

import UIKit

class BestDestinationsCollectionHeaderView: UICollectionReusableView {
    enum Constant {
        static let fontSize: CGFloat = 17.0
        static let horizontalInset: CGFloat = 16.0
        static let headerText: String = "근처의 인기 여행지"
    }
    
    enum Color {
        static let customBlack: UIColor? = UIColor(named: "Black")
    }
    
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
        titleLabel.font = UIFont.systemFont(ofSize: Constant.fontSize, weight: .semibold)
        titleLabel.textColor = Color.customBlack
        titleLabel.text = Constant.headerText
        //let inset = CGFloat(16)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Constant.horizontalInset),
            titleLabel.trailingAnchor.constraint(greaterThanOrEqualTo: self.trailingAnchor, constant: -Constant.horizontalInset),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
