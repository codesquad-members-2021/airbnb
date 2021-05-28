//
//  SearchManager.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/23.
//

import Foundation

class SearchManager {
     
    // 추후 작업할 객체
    var location: String
    var selectDates: SequenceDates
    var price: String
    var numberOfPleple: String
    
    init() {
        location = ""
        selectDates = .init(start: nil, end: nil)
        price = ""
        numberOfPleple = ""
    }
}
