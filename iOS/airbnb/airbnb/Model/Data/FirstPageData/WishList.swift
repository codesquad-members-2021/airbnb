//
//  WishList.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/18.
//

import Foundation

struct WishList: Decodable {
    private (set) var imageURL: String
    private (set) var title: String
    private (set) var subTitle: String
    private (set) var buttonTitle: String
}
