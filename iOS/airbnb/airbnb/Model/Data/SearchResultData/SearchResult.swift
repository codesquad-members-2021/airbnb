//
//  SearchResultData.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/24.
//

import Foundation

final class SearchResult: Decodable {
    private(set) var properties: [RoomEntity]
    
    init() {
        self.properties = []
    }
    
    func update(properties: [RoomEntity]) {
        self.properties = properties
        NotificationCenter.default.post(name: Notification.roomEntityUpdate, object: self)
    }
}
