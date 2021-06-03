//
//  ConditionViewModel.swift
//  Airbnb
//
//  Created by Lia on 2021/05/31.
//

import Foundation
import Combine

struct CellInfo {
    var title: String
    var detail: String
}

let c = Condition(cityId: 1, schedule: Schedule(checkIn: Date(), checkOut: Date()), price: Price(max: 1000000, min: 1000), people: (4,0))


class ConditionViewModel {
    
    @Published var city: Int
    @Published var schedule: Schedule?
    @Published var price: Price?
    @Published var people: (Int,Int)?
    private var cancelBag = Set<AnyCancellable>()
    
    init(condition: Condition = c) {
        self.city = condition.cityId
        self.schedule = condition.schedule
        self.price = condition.price
        self.people = condition.people
    }
    
}

extension ConditionViewModel {
 
    func updateCondition(city: Int) {
        self.city = city
    }
    
    func updateCondition(schedule: [Date]) {
        self.schedule?.checkIn = schedule.min()
        self.schedule?.checkOut = schedule.max()
    }
    
    func updateCondition(price: Price?) {
        self.price = price
    }
    
    func updateCondition(people: Int, infant: Int) {
        self.people = (people, infant)
    }
    
}

// dataSource

extension ConditionViewModel {
    
    func generateFirstCondition() -> [CellInfo] {
        var conditions = [CellInfo]()
        conditions.append(position(city: city))
        conditions.append(schedule(date: schedule))
        conditions.append(price(rate: price))
        conditions.append(people(num: people))
        
        return conditions
    }
    
    private func position(city: Int?) -> CellInfo {
        let cityDic = [1: "서울", 2: "경기도", 3: "강원도", 4: "충청도", 5: "경상남도", 6: "경상북도", 7: "전라남도", 8: "전라북도"]
        return CellInfo(title: "위치", detail: cityDic[city ?? 0] ?? "")
    }
    
    private func schedule(date: Schedule?) -> CellInfo {
        guard let date = date else { return CellInfo(title: "체크인/체크아웃", detail: "") }
        let checkIn = date.checkIn == nil ? "" : "\(date.checkIn!.month)월 \(date.checkIn!.day)일"
        let checkOut = date.checkOut == nil ? "" : "\(date.checkOut!.month)월 \(date.checkOut!.day)일"
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
    
    private func people(num: (Int, Int)?) -> CellInfo {
        guard let num = num else { return CellInfo(title: "인원", detail: "") }
        if num.1 != 0 { return CellInfo(title: "인원", detail: "게스트 \(num.0)명 유아 \(num.1)명") }
        return CellInfo(title: "인원", detail: "게스트 \(num.0)명")
    }
    
}

extension ConditionViewModel {
    
    func convertCodable() -> ConditionData {
        let stringDate = StringSchedule(checkIn: schedule?.checkIn?.description ?? "", checkOut: schedule?.checkOut?.description ?? "")
        let people = people != nil ? people!.0 + people!.1 : nil
        return ConditionData(cityId: city, schedule: stringDate, price: price, people: people)
    }
    
}

struct Condition {
    var cityId: Int
    var schedule: Schedule?
    var price: Price?
    var people: (Int, Int)?
}

struct Price: Codable {
    var max: Int
    var min: Int
}

struct Schedule: Codable {
    var checkIn: Date?
    var checkOut: Date?
}

struct ConditionData: Codable {
    var cityId: Int
    var schedule: StringSchedule?
    var price: Price?
    var people: Int?
}

struct StringSchedule: Codable {
    var checkIn: String
    var checkOut: String
}
