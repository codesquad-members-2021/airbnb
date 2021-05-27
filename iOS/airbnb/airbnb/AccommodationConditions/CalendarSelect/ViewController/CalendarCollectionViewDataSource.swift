//
//  CalendarCollectionViewDataSource.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import UIKit

class CalendarCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    private var calendarManager: CalendarManager
    
    init(calendarManager: CalendarManager) {
        self.calendarManager = calendarManager
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return calendarManager.months.count 
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if calendarManager.months.count == section - 1 {
            calendarManager.fillMonths(by: 6)
        }
        return calendarManager.months[section].days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellId = CalendarCollectionViewCell.reuseIdentifier
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? CalendarCollectionViewCell ?? CalendarCollectionViewCell()
        let targetDay = calendarManager.months[indexPath.section].days[indexPath.row]
        cell.titleLabel.text = targetDay.title ?? ""
        switch targetDay.status {
        case .future:
            cell.futureMode()
        case .past:
            cell.pastMode()
        case .empty:
            cell.emptyMode()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let headerId = MonthHeaderCollectionViewCell.reuseIdentifier
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as? MonthHeaderCollectionViewCell ?? MonthHeaderCollectionViewCell()
            let thisMonth = calendarManager.months[indexPath.section]
            header.titleLabel.text = thisMonth.title
            return header
        default:
            assert(false)
        }
    }

}
