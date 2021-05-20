//
//  PopularLocationCaseConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol PopularLocationCaseConfigurable {
    func loadPopularLocations(completionHandler: @escaping (Result<[PopularLocation], Error>) -> Void)
}
