//
//  LocationSearchResultUpdating.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import UIKit

class LocationSearchResultUpdating: NSObject, UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let resultController = searchController.searchResultsController as? SearchResultTableViewController else { return }
        
        //usecase에 검색했다고 보내기
        let result = searchController.searchBar.searchTextField.text ?? ""
        resultController.updateSearchResult(with: Array(repeating: result, count: 10))
    }

}
