//
//  LocationSearchController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

final class LocationSearchController: UISearchController {
    
    private lazy var customSearchBar = LocationSearchBar()
    override var searchBar: UISearchBar { customSearchBar }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    override init(searchResultsController: UIViewController?) {
        super.init(searchResultsController: searchResultsController)
        configure()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    private func configure() {
        hidesNavigationBarDuringPresentation = false
        automaticallyShowsCancelButton = false
        obscuresBackgroundDuringPresentation = false
    }

}
