//
//  SearchBarFactory.swift
//  airbnb
//
//  Created by Song on 2021/05/24.
//

import UIKit

struct SearchBarFactory {
    static func create(placeholder: String = "어디로 여행가세요?") -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.searchTextField.clearButtonMode = .never
        searchBar.placeholder = placeholder
        return searchBar
    }
}
