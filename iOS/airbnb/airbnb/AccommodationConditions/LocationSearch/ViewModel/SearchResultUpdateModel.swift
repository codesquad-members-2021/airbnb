//
//  SearchResultUpdateModel.swift
//  airbnb
//
//  Created by Song on 2021/05/25.
//

import Foundation

protocol SearchResultUpdateModel {
    typealias DataHandler = ([Location]) -> Void
    typealias ErrorHandler = (Error) -> Void
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler)
    func newData(with input: String)
}
