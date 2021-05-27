//
//  CurationModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import Foundation

struct Curation {
    let curationImage: String
    
    init(curationImage: String) {
        self.curationImage = curationImage
    }
}

extension Curation: Equatable, Hashable {
    static func == (lhs: Curation, rhs: Curation) -> Bool {
        return lhs.curationImage == rhs.curationImage
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(curationImage)
    }
}
