//
//  PopularLocationConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol PopularLocationConfigurable {
    func popularLocations(completionHandler: @escaping (Result<[PopularLocation], CustomError>) -> Void)
    func popularLocationImage(from imageUrl: String, completionHandler: @escaping (String) -> Void)
}
