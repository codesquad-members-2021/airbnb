//
//  PopularLocationCaseConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol PopularLocationLoadUseCase {
    func execute(completionHandler: @escaping (Result<[PopularLocation], NetworkError>) -> Void)
    func execute(with imageUrl: String, completionHandler: @escaping (String) -> Void)
}
