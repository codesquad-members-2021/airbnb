//
//  DiffableUsable.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/21.
//

import Foundation

class DiffableUsableModel: Hashable {
    private let identifier: UUID
    
    init() {
        self.identifier = UUID()
    }
    
    func hash(into hasher: inout Hasher) {
      hasher.combine(identifier)
    }

    static func == (lhs: DiffableUsableModel, rhs: DiffableUsableModel) -> Bool {
      return lhs.identifier == rhs.identifier
    }
}
