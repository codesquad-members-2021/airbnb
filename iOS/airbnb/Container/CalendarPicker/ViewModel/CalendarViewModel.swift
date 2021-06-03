//
//  CalendarViewModel.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import UIKit

class CalendarViewModel {
    
    private(set) var day : Day
    
    init(day : Day) {
        self.day = day
    }
    
    func setup(_ cell: UICollectionReusableView) {
        guard let cell = cell as? CalendarDateCell else {
            return
        }
        if !day.isWithinDisplayedMonth {
            cell.numberLabel.textColor = .systemGray
            cell.isUserInteractionEnabled = false
        }
        cell.numberLabel.text = day.number
    }
    
    func toggle(_ cell: UICollectionViewCell){
        guard let cell = cell as? CalendarDateCell else {
            return
        }
        day.isSelected = cell.isSelected
        cell.selectionBackgroundView.backgroundColor = cell.isSelected ? .systemBlue : .clear
    }
    
}
