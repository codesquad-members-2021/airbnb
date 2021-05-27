//
//  Day.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import Foundation

struct Day {
    let date: Date?
    let title: String?
    let status: Status
    
    enum Status {
        case past, future
        case empty
    }
}
