//
//  SelectInfoDelegate.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/02.
//

import Foundation

protocol SelectInfoDelegate : AnyObject {
    func didselectPlace(_ place : String)
    func didSelectDay(_ date : Day)
    func didSelectPerson(_ person : Int)
    func didSelectCost(_ cost : Int)
}
