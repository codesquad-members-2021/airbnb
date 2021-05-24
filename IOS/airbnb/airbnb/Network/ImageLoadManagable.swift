//
//  AlamofireImageLoadManagable.swift
//  airbnb
//
//  Created by Song on 2021/05/21.
//

import Foundation

protocol ImageLoadManagable {
    func load(from imageUrl: String, completionHandler: @escaping (String) -> ())
}
