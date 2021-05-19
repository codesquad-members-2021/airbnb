//
//  LocationSearchBar.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

class LocationSearchBar: UISearchBar {

    static let placeholder = "어디로 여행가세요?"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        placeholder = LocationSearchBar.placeholder
        searchTextField.clearButtonMode = .never
    }
    
}
