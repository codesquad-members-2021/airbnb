//
//  ImagePathLoadModel.swift
//  airbnb
//
//  Created by Song on 2021/05/25.
//

import Foundation

protocol ImagePathLoadModel {
    typealias DataHandler = (String) -> Void
    typealias ErrorHandler = (Error) -> Void
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler)
}
