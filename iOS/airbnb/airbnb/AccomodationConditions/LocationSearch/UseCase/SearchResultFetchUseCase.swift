//
//  NewSearchCaseConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol SearchResultFetchUseCase {
    func execute(for keyword: String,
                 completionHandler: @escaping (Result<[LocationSearchResult], NetworkError>) -> Void)
}
