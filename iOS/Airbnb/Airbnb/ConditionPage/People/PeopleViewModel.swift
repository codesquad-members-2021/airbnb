//
//  PeopleViewModel.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import Foundation

enum HumanType : String {
    case adult = "성인"
    case kid = "어린이"
    case infant = "유아"
    
    var age : String {
        switch self {
        case .adult : return "만 13세 이상"
        case .kid : return "만 2~12세"
        case .infant : return "만 2세 미만"
        }
    }
}

struct PersonCellInfo {
    var person: HumanType
    var age: String
}

class PeopleViewModel {
    
    @Published var adultNum: Int
    @Published var kidNum: Int
    @Published var infantNum: Int
    @Published var totalNum: (Int, Int)
    
    enum calculate {
        case plus
        case minus
        
        var value : Int {
            switch self {
            case .plus : return 1
            case .minus : return -1
            }
        }
    }
    
    init(adult: Int = 0, kid: Int = 0, infant: Int = 0, total: (Int, Int) = (0,0)) {
        self.adultNum = adult
        self.kidNum = kid
        self.infantNum = infant
        self.totalNum = total
    }
    
}


extension PeopleViewModel {
    
    func generateInitalInfo() -> [PersonCellInfo] {
        let initialInfo = [
            PersonCellInfo(person: .adult, age: HumanType.adult.age),
            PersonCellInfo(person: .kid, age: HumanType.kid.age),
            PersonCellInfo(person: .infant, age: HumanType.infant.age)
        ]
        return initialInfo
    }
    
    func generateCountInfo() -> [Int] {
        return [adultNum, kidNum, infantNum]
    }
    
    func changePeopleNum(type: HumanType, operation: calculate) {
        switch type {
        case .adult:
            adultNum += operation.value
        case .kid:
            kidNum += operation.value
        case .infant:
            infantNum += operation.value
            if adultNum == 0 && infantNum > 0 { adultNum += 1 }
        }
        totalNum = (adultNum + kidNum, infantNum)
    }
    
    func isChangeAvailable(type: HumanType) -> (Bool, Bool) {
        switch type {
        case .adult:
            if adultNum == 1 && infantNum > 0 { return (false, adultNum < 8) }
            return (adultNum > 0, adultNum < 8)
        case .kid:
            return (kidNum > 0, kidNum < 8)
        case .infant:
            return (infantNum > 0, infantNum < 8)
        }
    }
}
