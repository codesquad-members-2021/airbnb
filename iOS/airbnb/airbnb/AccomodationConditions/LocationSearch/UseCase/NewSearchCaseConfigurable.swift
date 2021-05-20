//
//  NewSearchCaseConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol NewSearchCaseConfigurable {
    func search(for keyword: String, completionHandler: @escaping (Result<[LocationSearchResult], CustomError>) -> Void)
}
