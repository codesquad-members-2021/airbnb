//
//  SearchResultConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol SearchResultConfigurable {
    func searchResults(for keyword: String,
                       completionHandler: @escaping (Result<[LocationSearchResult], CustomError>) -> Void)
}
