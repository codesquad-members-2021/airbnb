//
//  SearchResultData.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/24.
//

import Foundation

class SearchResultData: Decodable {
    private(set) var rooms: [RoomData]
    
    init() {
        self.rooms = []
    }
}
