//
//  VariousDestinationModel.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import Foundation

class VariousDestinationModel {
    private(set) var destinationImage: String
    private(set) var destinationDescription: String
    
    init(destinationImage: String, destinationDescription: String) {
        self.destinationImage = destinationImage
        self.destinationDescription = destinationDescription
    }
}
