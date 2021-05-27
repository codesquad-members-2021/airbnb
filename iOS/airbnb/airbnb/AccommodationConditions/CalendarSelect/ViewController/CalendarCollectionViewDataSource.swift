//
//  CalendarCollectionViewDataSource.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import UIKit

class CalendarCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    private(set) var calendar = [Month]()
    
    func updateCalendar(with months: [Month]) {
        self.calendar = months
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return calendar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return calendar[section].days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellId = CalendarCollectionViewCell.reuseIdentifier
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? CalendarCollectionViewCell ?? CalendarCollectionViewCell()
        let targetDay = calendar[indexPath.section].days[indexPath.row]
        cell.titleLabel.text = targetDay.title ?? ""
        
        switch targetDay.timeStatus {
        case .future:
            cell.futureMode()
            switch targetDay.selectStatus {
            case .none:
                cell.normalMode()
            case .edge:
                cell.selectedMode(isEdge: true)
            case .middle:
                cell.selectedMode(isEdge: false)
            }
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
            let thisMonth = calendar[indexPath.section]
            header.titleLabel.text = thisMonth.title
            return header
        default:
            assert(false)
        }
    }

}
