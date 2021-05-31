//
//  HeaderView.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class HeaderView: UICollectionReusableView, ReuseIdentifierable {
   
    private var headerLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func configure(headerText: String?) {
        self.addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.adjustsFontForContentSizeCategory = true
        headerLabel.text = headerText
        headerLabel.font = UIFont.preferredFont(forTextStyle: .title2)
        
        let inset = CGFloat(16)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
