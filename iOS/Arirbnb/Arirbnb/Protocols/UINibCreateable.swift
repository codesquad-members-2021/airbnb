//
//  UINibCreateable.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/29.
//

import UIKit

protocol UINibCreateable: class, ReuseIdentifierable {
    static var nib: UINib { get }
}

extension UINibCreateable {
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
}
