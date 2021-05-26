//
//  UIColor+Extension.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/26.
//

import UIKit

extension UIColor {
    static var selectedColor: UIColor { UIColor(named: "SelectedRangeColor") ?? .init() }
    static var cityColor: UIColor { UIColor(named: "CityColor") ?? .init() }
    static var distanceColor: UIColor { UIColor(named: "DistanceColor") ?? .init() }
    static var boardColor: UIColor { UIColor(named: "BoardColor") ?? .init() }
}
