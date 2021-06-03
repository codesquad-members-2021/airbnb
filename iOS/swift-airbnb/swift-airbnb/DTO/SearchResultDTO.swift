//
//  SearchResultDTO.swift
//  swift-airbnb
//
//  Created by user on 2021/05/23.
//

import Foundation

// MARK: DTO의 내부 프로퍼티 네이밍은 카카오 API의 Response Name과 일치합니다.
struct SearchResultDTO: Decodable {
    let documents: [Document]
    let meta: Meta
}

struct Document: Decodable {
    let addressName: String
    let categoryGroupCode: String
    let categoryGroupName: String
    let categoryName: String
    let distance: String
    let id: String
    let phone: String
    let placeName: String
    let placeUrl: String
    let roadAddressName: String
    let x: String
    let y: String
}

struct Meta: Decodable {
    let isEnd: Bool
    let pageableCount: Int
    let sameName: SameName
    let totalCount: Int
}

// MARK: - SameName
struct SameName: Decodable {
    let keyword: String
    let region: [String]
    let selectedRegion: String
}
