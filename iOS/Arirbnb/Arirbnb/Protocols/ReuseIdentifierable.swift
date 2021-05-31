//
//  ReuseIdentifierable.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/29.
//

import UIKit

protocol ReuseIdentifierable: class {
    static var reuseIdentifier: String { get }
}

extension ReuseIdentifierable {
    static var reuseIdentifier: String {
            return String(describing: self)
        }
}
