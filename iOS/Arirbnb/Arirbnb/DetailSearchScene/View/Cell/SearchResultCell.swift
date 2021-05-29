//
//  SearchResultCell.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/21.
//

import UIKit

class SearchResultCell: UICollectionViewCell, UINibCreateable {

    @IBOutlet private weak var searchResultLabel: UILabel!
    
    func configure(with model: Destination?) {
        guard let model = model else { return }
        searchResultLabel.text = model.destinationName
    }

}
