//
//  SelectInfoDelegate.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/02.
//

import Foundation

protocol SelectInfoDelegate: SelectDayDelegate, SelectPersonDelegate, SelectCostDelegate {
    
}

protocol SelectDayDelegate: AnyObject {
    func didSelectDay(_ date : Day?)
}

protocol SelectPersonDelegate: AnyObject {
    func didSelectPerson(_ person : Int)
}

protocol SelectCostDelegate: AnyObject {
    func didSelectCost(_ cost : Int)
}
