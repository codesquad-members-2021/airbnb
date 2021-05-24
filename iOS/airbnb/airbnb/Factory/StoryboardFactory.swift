//
//  StoryboardFactory.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import UIKit

struct StoryboardFactory {
    static func create(_ storyboard: Storyboard) -> UIStoryboard {
        return UIStoryboard(name: storyboard.id, bundle: .main)
    }
}

enum Storyboard: String {
    case main = "Main"
    case accomodationConditions = "AccomodationConditions"
    
    var id: String {
        return rawValue
    }
}
