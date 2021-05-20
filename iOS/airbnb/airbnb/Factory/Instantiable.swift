//
//  Instantiable.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import Foundation

protocol Instantiable {
    static var reuseIdentifier: String { get }
}
