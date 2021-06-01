//
//  CalanderColleectionDataSource.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/26.
//

import UIKit

class CalenderColleectionDataSource: NSObject, UICollectionViewDataSource {
    
    var models : [CalendarViewModel] = []
    
    init(with date : Date){
        super.init()
        
        let days = CalendarDateCalculator().generateDaysInMonth(for: date)
        days.forEach{
            let model = CalendarViewModel(day: $0)
            models.append(model)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = models[indexPath.row]
        guard let cell = collectionView
                .dequeueReusableCell(withReuseIdentifier: CalendarDateCell.reuseIdentifier,
                                     for: indexPath) as? CalendarDateCell
        else {
            return UICollectionViewCell()
        }
        model.setup(cell, in: collectionView, at: indexPath)
        return cell
    }
    
}
