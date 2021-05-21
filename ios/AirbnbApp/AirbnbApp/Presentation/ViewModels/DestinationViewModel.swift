//
//  DestinationViewModel.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/21.
//

import Foundation

struct DestinationViewModel {
    let name: String
    let drivingTime: String?
    
    init(destination: Destination) {
        self.name = destination.name
        self.drivingTime = destination.drivingTime
    }
}
