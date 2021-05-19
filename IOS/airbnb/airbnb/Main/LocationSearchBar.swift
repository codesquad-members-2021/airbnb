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
        placeholder = LocationSearchBar.placeholder
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        placeholder = LocationSearchBar.placeholder
    }
    
}
