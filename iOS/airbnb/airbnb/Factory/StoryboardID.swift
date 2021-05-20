//
//  StoryBoardID.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import Foundation

enum Storyboard: String {
    case main = "Main"
    case accomodationConditions = "AccomodationConditions"
    
    var id: String {
        return rawValue
    }
}
