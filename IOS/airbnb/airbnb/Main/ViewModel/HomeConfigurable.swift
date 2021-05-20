//
//  HomeConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

protocol HomeConfigurable {
    func heroImage(completionHandler: @escaping (Result<String, CustomError>) -> Void)
}
