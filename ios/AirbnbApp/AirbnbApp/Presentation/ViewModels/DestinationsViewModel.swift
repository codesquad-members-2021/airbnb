//
//  DestinationsViewModel.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/21.
//

import Foundation

protocol DestinationsViewModelInput {
    func updateDestinations()
    func filter(using searchItems: [String]) -> [DestinationViewModel]
}

protocol DestinationsViewModelOutput {
    var bestDestinations: [DestinationViewModel] { get }
    var allDestinations: [DestinationViewModel] { get }
}

protocol DestinationsViewModel: DestinationsViewModelInput, DestinationsViewModelOutput { }

final class DefaultDestinationsViewModel: DestinationsViewModel {
    //MARK: - Output
    var bestDestinations: [DestinationViewModel] = []
    var allDestinations: [DestinationViewModel] = []
}

//MARK: - Input
extension DefaultDestinationsViewModel {
    func updateDestinations() {
        guard let destinations = JSONParser.parse(jsonData: MockJSON.bestDestinations, to: [Destination].self) else {
            return
        }
        guard let addresses = JSONParser.parse(jsonData: MockJSON.savedAddresses, to: [Destination].self) else {
            return
        }
        bestDestinations = destinations.map(DestinationViewModel.init)
        allDestinations = addresses.map(DestinationViewModel.init)
    }
    
    func filter(using searchItems: [String]) -> [DestinationViewModel] {
        var filtered = allDestinations
        searchItems.forEach { item in
            filtered = filtered.filter { destination in
                destination.name.lowercased().contains(item)
            }
        }
        return filtered
    }
}
