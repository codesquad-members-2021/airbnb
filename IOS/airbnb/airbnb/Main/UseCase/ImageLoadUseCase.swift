//
//  TurnOnCaseConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

protocol ImageLoadUseCase {
    func execute(completionHandler: @escaping (Result<String, NetworkError>) -> Void)
}
