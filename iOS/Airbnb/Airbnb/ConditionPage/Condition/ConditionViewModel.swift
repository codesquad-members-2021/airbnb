//
//  ConditionViewModel.swift
//  Airbnb
//
//  Created by Lia on 2021/05/31.
//

import Foundation

struct CellInfo {
    var title: String
    var detail: String
}

let c = Condition(cityId: 1, schedule: Schedule(checkIn: Date(), checkOut: Date()), price: Price(max: 1000000, min: 1000), people: 4)


class ConditionViewModel {
    
    private var condition: Condition
    
    init(condition: Condition = c) {
        self.condition = condition
    }
    
}

// dataSource

extension ConditionViewModel {
    
    func generateFirstCondition() -> [CellInfo] {
        var conditions = [CellInfo]()
        conditions.append(position(city: condition.cityId))
        conditions.append(schedule(date: condition.schedule))
        conditions.append(price(rate: condition.price))
        conditions.append(people(num: condition.people))
        
        return conditions
    }
    
    private func position(city: Int?) -> CellInfo {
        let cityDic = [1: "서울", 2: "경기도", 3: "강원도", 4: "충청도", 5: "경상남도", 6: "경상북도", 7: "전라남도", 8: "전라북도"]
        return CellInfo(title: "위치", detail: cityDic[city ?? 0] ?? "")
    }
    
    private func schedule(date: Schedule?) -> CellInfo {
        guard let date = date else { return CellInfo(title: "체크인/체크아웃", detail: "") }
        let checkIn = "\(date.checkIn.month)월 \(date.checkIn.day)일"
        let checkOut = "\(date.checkOut.month)월 \(date.checkOut.day)일"
        return CellInfo(title: "체크인/체크아웃", detail: "\(checkIn) - \(checkOut)")
    }
    
    private func price(rate: Price?) -> CellInfo {
        guard let rate = rate else { return CellInfo(title: "요금", detail: "") }
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let min = numberFormatter.string(from: NSNumber(value: rate.min))!
        let max = numberFormatter.string(from: NSNumber(value: rate.max))!
        
        return CellInfo(title: "요금", detail: "₩\(min) - \(max)+")
    }
    
    private func people(num: Int?) -> CellInfo {
        guard let num = num else { return CellInfo(title: "인원", detail: "") }
        return CellInfo(title: "인원", detail: "게스트 \(num)명")
    }
    
}

struct Condition: Codable {
    var cityId: Int
    var schedule: Schedule?
    var price: Price?
    var people: Int?
}

struct Price: Codable {
    var max: Int
    var min: Int
}

struct Schedule: Codable {
    var checkIn: Date
    var checkOut: Date
}
