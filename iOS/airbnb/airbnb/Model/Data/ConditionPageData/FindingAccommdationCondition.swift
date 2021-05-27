//
//  ConditionData.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/22.
//

import Foundation

final class FindingAccommdationCondition {
    private(set) var location: String
    private(set) var firstDate: String
    private(set) var secondDate: String
    private(set) var minCost: String
    private(set) var maxCost: String
    private(set) var people: Int
    var peopleCount: String {
        return "\(people)"
    }
    
    init(){
        location = ""
        firstDate = ""
        secondDate = ""
        minCost = ""
        maxCost = ""
        people = 0
    }
    
    func insertData(location: String) {
        self.location = location
        NotificationCenter.default.post(name: FindingAccommdationViewController.conditionDataUpdate, object: self)
    }
    
    func update(firstDate: String) {
        self.firstDate = firstDate
        NotificationCenter.default.post(name: FindingAccommdationViewController.conditionDataUpdate, object: self)
    }
    
    func update(secondDate: String) {
        self.secondDate = secondDate
        NotificationCenter.default.post(name: FindingAccommdationViewController.conditionDataUpdate, object: self)
    }
    
    func update(minCost: String) {
        self.minCost = minCost
        NotificationCenter.default.post(name: FindingAccommdationViewController.conditionDataUpdate, object: self)
    }
    
    func update(maxCost: String) {
        self.maxCost = maxCost
        NotificationCenter.default.post(name: FindingAccommdationViewController.conditionDataUpdate, object: self)
    }
    
    func update(people: Int, isAdd: Bool) {
        if isAdd {
            self.people += people
        }
        else {
            if self.people == 0 {
                return
            }
            self.people -= people
        }
        NotificationCenter.default.post(name: FindingAccommdationViewController.conditionDataUpdate, object: self)
    }
}
