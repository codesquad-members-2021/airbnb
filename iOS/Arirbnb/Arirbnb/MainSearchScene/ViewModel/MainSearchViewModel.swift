//
//  MainViewModel.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import Foundation

struct MainSearchViewModelAction {
    let showDetailSearchView : () -> ()
}

class MainSearchViewModel {
    private var models: [[Destination]]
    private var actions: MainSearchViewModelAction
    
    init(actions: MainSearchViewModelAction) {
        self.actions = actions
        self.models = [[],MockAdjacentDestination.mockDatas, MockThemeDestination.mockDatas]
    }
    
    func forApplyItems(sectionIndex: Int) -> [Destination]{
        return models[sectionIndex]
    }
    
    func showDetailSearchView() {
        actions.showDetailSearchView()
    }
}

extension MainSearchViewModel {
    
}
