//
//  NetworkResultHandleModel.swift
//  airbnb
//
//  Created by Song on 2021/05/28.
//

import Foundation

protocol NetworkResultHandleModel {
    associatedtype Result
    typealias DataHandler = (Result) -> Void
    typealias ErrorHandler = (Error) -> Void
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler)
}
