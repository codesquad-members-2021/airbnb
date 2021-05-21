//
//  DetailSearchViewModel.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import Foundation
import Combine

class DetailSearchViewModel {
    private var models: [[DiffableUsableModel]]
    private var allDestinations: [SearchedDestination]
    
    init() {
        self.models = [MockAdjacentDestination.mockDatas,[]]
        self.allDestinations = MockSearchedDestinaion.mockDatas
    }
    
    func forApplyItems(sectionIndex: Int) -> [DiffableUsableModel] {
        return models[sectionIndex]
    }
    
    func filteringDestinations(with text: String) {
        let filteredDestinations = allDestinations.filter {
            $0.destinationName.contains(text)
        }
        models[1] = filteredDestinations
    }
}
