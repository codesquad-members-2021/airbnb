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
    private(set) var minCost: Int
    private(set) var maxCost: Int
    private(set) var people: Int
    var peopleCount: String {
        return "\(people)"
    }
    var minCostDescription: String {
        return minCost == 0 ? "" : "\(minCost)"
    }
    
    var maxCostDescription: String {
        return maxCost == 0 ? "" : "\(maxCost)"
    }
    
    init(){
        location = ""
        firstDate = ""
        secondDate = ""
        minCost = 0
        maxCost = 0
        people = 0
    }
    
    func decimalWon(value: String) -> String {
        let price = Int(value.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: "원", with: "")) ?? 0
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(from: NSNumber(value: price))! + "원"
        
        return result
    }
    
    func insert(location: String) {
        self.location = location
        NotificationCenter.default.post(name: Notification.conditionDataUpdate, object: self)
    }
    
    func update(firstDate: String) {
        self.firstDate = firstDate
        NotificationCenter.default.post(name: Notification.conditionDataUpdate, object: self)
    }
    
    func update(secondDate: String) {
        self.secondDate = secondDate
        NotificationCenter.default.post(name: Notification.conditionDataUpdate, object: self)
    }
    
    func update(minCost: Int) {
        self.minCost = minCost
        NotificationCenter.default.post(name: Notification.conditionDataUpdate, object: self)
    }
    
    func update(maxCost: Int) {
        self.maxCost = maxCost
        NotificationCenter.default.post(name: Notification.conditionDataUpdate, object: self)
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
        NotificationCenter.default.post(name: Notification.conditionDataUpdate, object: self)
    }
}
