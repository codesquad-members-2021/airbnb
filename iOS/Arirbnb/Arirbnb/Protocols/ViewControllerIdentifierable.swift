//
//  ViewControllerIdentifierable.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/29.
//

import UIKit

protocol ViewControllerIdentifierable {
    static var storyboardName: String { get }
    static var storyboardID: String { get }
}

extension ViewControllerIdentifierable {
    static var storyboardName: String {
        return "Main"
    }
    
    static var storyboardID: String {
        return String(describing: self)
    }
}

