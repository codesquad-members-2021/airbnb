//
//  IdentityInfo.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/19.
//

import Foundation

protocol IdentityInfo {
    static var nibName: String { get }
    static var reuseIdentifier: String {  get }
}

extension IdentityInfo {
    static var nibName: String {
        return String(describing: Self.self)
    }
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
