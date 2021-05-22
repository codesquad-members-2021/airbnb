//
//  CalendarDataSource.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import UIKit

class CalendarDataSource: NSObject, UICollectionViewDataSource {
    
    let dates: [String:[String]]
    var sequenceDates: SequenceDates
    
    init(dates: [String:[String]], sequenceDates: SequenceDates) {
        self.dates = dates
        self.sequenceDates = sequenceDates
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dates.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let datesSection = CalendarHelper.getMonth(index: section)
        return dates[datesSection]?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CalendarDayCell.identifier, for: indexPath) as? CalendarDayCell else {
            return .init()
        }
        let month = CalendarHelper.getMonth(index: indexPath.section)
        let day = dates[month]?[indexPath.row] ?? ""
        print(sequenceDates)
        cell.configure(day: day)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerview = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CalendarHeaderView.identifier, for: indexPath) as? CalendarHeaderView else {
            return .init()
        }
        let month = CalendarHelper.getMonth(index: indexPath.section)
        headerview.updateLabel(text: month)
        return headerview
    }
}
