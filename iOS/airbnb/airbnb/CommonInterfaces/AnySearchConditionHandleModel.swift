//
//  AnySearchConditionHandleModel.swift
//  airbnb
//
//  Created by Song on 2021/05/30.
//

import Foundation

class AnySearchConditionHandleModel<DataToPresent>: SearchConditionHandleModel {
    
    typealias DataToPresent = DataToPresent
    
    private(set) var dataHandler: DataHandler?
    private(set) var conditionHandler: ConditionHandler?

    func bind(dataHandler: @escaping DataHandler, conditionHandler: @escaping ConditionHandler) {
        self.dataHandler = dataHandler
        self.conditionHandler = conditionHandler
    }
    
}
