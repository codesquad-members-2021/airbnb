//
//  PopularLocationCaseConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol PopularLocationCaseConfigurable {
    func loadPopularLocations(completionHandler: @escaping (Result<[PopularLocation], NetworkError>) -> Void)
    func loadPopularLocationImage(from imageUrl: String, completionHandler: @escaping (String) -> Void)
}
