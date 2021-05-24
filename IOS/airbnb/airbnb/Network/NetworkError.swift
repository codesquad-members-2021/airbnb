//
//  CustomError.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

enum NetworkError: String, Error, CustomStringConvertible {
    case internet = "인터넷 연결을 확인해주세요 :("
    case noResult = "검색 결과를 찾을 수 없습니다 :("
    case notAllowed = "잘못된 접근입니다 :("
    case server = "서버 상태가 불안정합니다 :("
    case unknown = "알 수 없는 문제가 발생했습니다 :("

    var description: String {
        return rawValue
    }
}
