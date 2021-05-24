//
//  HomeConfigurable.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

protocol DataLoadViewModel {
    associatedtype DataType
    typealias DataHandler = (DataType) -> Void
    typealias ErrorHandler = (Error) -> Void
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler)
}
