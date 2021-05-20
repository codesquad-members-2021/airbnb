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
