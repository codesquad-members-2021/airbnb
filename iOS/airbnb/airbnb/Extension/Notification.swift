//
//  Notification.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/31.
//

import Foundation

extension Notification {
    static let conditionDataUpdate = Notification.Name("conditionDataUpdate")
    static let costGraphDataUpdate = Notification.Name("costGraphDataUpdate")
    static let tripPlaceDataUpdate = Notification.Name("tripPlaceDataUpdate")
    static let recommendTripDataUpdate = Notification.Name("recommendTripDataUpdate")
    static let roomEntityUpdate = Notification.Name("roomEntityUpdate")
}
