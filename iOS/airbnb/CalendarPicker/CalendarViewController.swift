//
//  CalendarViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/25.
//

import UIKit

enum CalendarDataError: Error {
    case metadataGeneration
}

class CalendarViewController: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    
    // MARK: - Properties
    
    private lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d"
        dateFormatter.locale = Locale(identifier: "ko")
        return dateFormatter
    }()
    
    private let flowLayout : UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionHeadersPinToVisibleBounds = true
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        return layout
    }()
    
    private let calendar = Calendar(identifier: .gregorian)
    private var baseDate = Date()
    private lazy var days = generateDaysInMonth(for: baseDate)
    private lazy var dataSource = CalanderColleectionDataSource(with: days)
    private var numberOfWeeksInBaseDate: Int {
        calendar.range(of: .weekOfMonth, in: .month, for: baseDate)?.count ?? 0
    }
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        days = generateDaysInMonth(for: baseDate)
        
        collection.dataSource = dataSource
        collection.delegate = self
        collection.collectionViewLayout = flowLayout
    }

}

// MARK: - Calculator days per a month

extension CalendarViewController {
    
    func monthMetadata(for baseDate: Date) throws -> MonthMetadata {
        guard
            let numerOfDaysInMonth = calendar.range(of: .day, in: .month, for: baseDate)?.count,
            let firstDayOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: baseDate))
        else {
            throw CalendarDataError.metadataGeneration
        }
        
        let firstDayWeekDay = calendar.component(.weekday, from: firstDayOfMonth)
        
        return MonthMetadata(numberOfDays: numerOfDaysInMonth,
                             firstDay: firstDayOfMonth,
                             firstDayWeekday: firstDayWeekDay)
    }
    
    func generateDaysInMonth(for baseDate: Date) -> [Day] {
        
        // TODO: Error Handling
        guard let metadata = try? monthMetadata(for: baseDate) else {
            fatalError("An error occurred when generating the metadata for \(baseDate)")
        }
        
        let numberOfDaysInMonth = metadata.numberOfDays
        let offsetInInitialRow = metadata.firstDayWeekday
        let firstDayOfMonth = metadata.firstDay
        
        var days: [Day] = (1..<(numberOfDaysInMonth + offsetInInitialRow))
            .map { day in
                let isWithinDisplayedMonth = day >= offsetInInitialRow
                let dayOffset = isWithinDisplayedMonth ? day - offsetInInitialRow : -(offsetInInitialRow - day)
                
                return generateDay(offsetBy: dayOffset,
                                   for: firstDayOfMonth,
                                   isWithinDisplayedMonth: isWithinDisplayedMonth)
                
            }
        days += generateStartOfNextMonth(using: firstDayOfMonth)
        return days
    }
    
    func generateDay(offsetBy dayOffset: Int, for baseDate: Date, isWithinDisplayedMonth: Bool) -> Day {
        let date = calendar.date(byAdding: .day, value: dayOffset, to: baseDate) ?? baseDate
        
        return Day(date: date,
                   number: dateFormatter.string(from: date),
                   isSelected: calendar.isDate(date, inSameDayAs: baseDate),
                   isWithinDisplayedMonth: isWithinDisplayedMonth)
    }
    
    func generateStartOfNextMonth(using firstDayOfDisplayedMonth: Date) -> [Day] {
        
        guard let lastDayInMonth = calendar.date(
                byAdding: DateComponents(month: 1, day: -1),
                to: firstDayOfDisplayedMonth)
        else {
            return []
        }
        
        let additionalDays = 7 - calendar.component(.weekday, from: lastDayInMonth)
        guard additionalDays > 0 else {
            return []
        }
        
        let days: [Day] = (1...additionalDays)
            .map {
                generateDay(offsetBy: $0, for: lastDayInMonth, isWithinDisplayedMonth: false)
            }

        return days
    }
    
}

extension CalendarViewController: UICollectionViewDelegate {
    
}

extension CalendarViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = Int(collectionView.frame.width / 7)
        let height = Int(collectionView.frame.height) / numberOfWeeksInBaseDate - 10
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50.0)
    }
}
