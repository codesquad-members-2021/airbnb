//
//  NearPlaceDTO.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/21.
//

import Foundation

struct NearPlaceDTO : Hashable {
    let imageURL : URL?
    let localName : String
    let distance : Double
}
