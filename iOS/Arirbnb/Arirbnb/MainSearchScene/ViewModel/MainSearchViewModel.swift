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
    private var sectionPerItems: [[Int]]
    private var actions: MainSearchViewModelAction
    
    init(actions: MainSearchViewModelAction) {
        self.actions = actions
        self.sectionPerItems = [[0], [1, 2, 3, 4, 5], [6, 7, 8]]
    }
    
    func forApplyItems(sectionIndex: Int) -> [Int]{
        return sectionPerItems[sectionIndex]
    }
    
    func showDetailSearchView() {
        actions.showDetailSearchView()
    }
}

extension MainSearchViewModel {
    
}
