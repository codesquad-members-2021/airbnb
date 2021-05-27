//
//  PopularLocationLoadModel.swift
//  airbnb
//
//  Created by Song on 2021/05/25.
//

import Foundation

protocol PopularLocationLoadModel {
    typealias DataHandler = ([PopularLocation]) -> Void
    typealias ErrorHandler = (Error) -> Void
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler)
}
