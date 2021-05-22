//
//  LocationHeaderView.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/20.
//

import UIKit

class LocationHeaderView: UIView {

    private var title: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "근처의 인기 여행지"
        label.font = .boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        self.backgroundColor = .clear
        self.addSubview(title)
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        title.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
