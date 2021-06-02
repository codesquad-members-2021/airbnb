//
//  GuestType.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/06/01.
//

import Foundation

enum GuestType: String {
    case adult = "성인"
    case child = "어린이"
    case infant = "유아"
    
    var description: String {
        switch self {
        case .adult: return "만 13세 이상"
        case .child: return "만 2~12세"
        case .infant: return "만 2세 미만"
        }
    }
}
