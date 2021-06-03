//
//  ResultSupplymentaryView.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import UIKit

class ResultSupplymentaryView: UICollectionReusableView {
    
    let label = UILabel()
    static let reuseIdentifier = "ResultSupplymentaryView"

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}


extension ResultSupplymentaryView {
    
    private func configure() {
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        let inset = CGFloat(10)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            label.topAnchor.constraint(equalTo: topAnchor, constant: inset),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset)
        ])

    }
    
}
