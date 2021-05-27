//
//  VariousDestinationModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import Foundation

struct VariousDestination {
    let destinationImage: String
    let destinationDescription: String
    
    init(destinationImage: String, destinationDescription: String) {
        self.destinationImage = destinationImage
        self.destinationDescription = destinationDescription
    }
}

extension VariousDestination: Equatable, Hashable {
    static func == (lhs: VariousDestination, rhs: VariousDestination) -> Bool {
        return lhs.destinationImage == rhs.destinationImage && lhs.destinationDescription == rhs.destinationDescription
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(destinationImage)
        hasher.combine(destinationDescription)
    }
}
