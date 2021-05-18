//
//  MainViewModel.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import Foundation

class MainViewModel {
    var sectionPerItems: [[Int]]
    
    init() {
        self.sectionPerItems = [[0], [1, 2, 3, 4, 5], [6, 7, 8]]
    }
    
    func forApplyItems(sectionIndex: Int) -> [Int]{
        return sectionPerItems[sectionIndex]
    }
}

extension MainViewModel {
    
}
