//
//  TurnOnCaseConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

protocol TurnOnCaseConfigurable {
    func loadHeroImage(completionHandler: @escaping (Result<String, CustomError>) -> Void)
}
