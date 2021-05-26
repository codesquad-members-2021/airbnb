//
//  CalendarViewModel.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import UIKit

class CalendarViewModel {
    
    var day : Day
    
    init(day : Day) {
        self.day = day
    }
    
    func setup(_ cell: UICollectionReusableView, in collectionView: UICollectionView, at indexPath: IndexPath) {
        guard let cell = cell as? CalendarDateCell else {
            return
        }
        if !day.isWithinDisplayedMonth {
            cell.numberLabel.textColor = .systemGray
        }
        cell.numberLabel.text = day.number
    }
}
