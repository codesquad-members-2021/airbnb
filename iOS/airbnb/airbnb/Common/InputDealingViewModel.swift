//
//  InputDealingViewModel.swift
//  airbnb
//
//  Created by Song on 2021/05/24.
//

import Foundation

protocol InputDealingViewModel: DataLoadViewModel {
    associatedtype InputType
    func newData(with input: InputType)
}
