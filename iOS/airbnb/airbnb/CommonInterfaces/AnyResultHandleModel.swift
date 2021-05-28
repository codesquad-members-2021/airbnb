//
//  AnyResultHandleModel.swift
//  airbnb
//
//  Created by Song on 2021/05/28.
//

import Foundation

class AnyResultHandleModel<ResultData>: NetworkResultHandleModel {
    
    typealias Result = ResultData
    
    private(set) var dataHandler: DataHandler?
    private(set) var errorHandler: ErrorHandler?
    
    func bind(dataHandler: @escaping DataHandler, errorHandler: @escaping ErrorHandler) {
        self.dataHandler = dataHandler
        self.errorHandler = errorHandler
    }
    
}
