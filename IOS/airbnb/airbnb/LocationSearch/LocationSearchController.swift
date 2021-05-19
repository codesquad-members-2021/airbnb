//
//  LocationSearchController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

class LocationSearchController: UISearchController {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
        setPlaceholder()
    }
    
    override init(searchResultsController: UIViewController?) {
        super.init(searchResultsController: searchResultsController)
        configure()
        setPlaceholder()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
        setPlaceholder()
    }
    
    private func configure() {
        hidesNavigationBarDuringPresentation = false
        automaticallyShowsCancelButton = false
        obscuresBackgroundDuringPresentation = false
    }
    
    private func setPlaceholder() {
        searchBar.placeholder = LocationSearchBar.placeholder
    }

}
