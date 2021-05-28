//
//  CalendarViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import UIKit

class CalendarViewController: UIViewController {

    @IBOutlet weak var calendarCollection: UICollectionView!
    
    private var calendarManager = CalendarManager()
    private var calendarDataSource: CalendarDataSource?
    private let headerViewHight:CGFloat = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDataSoure()
        configure()
        NotificationCenter.default.addObserver(self, selector: #selector(updateSequseDates(_:)), name: CalendarManager.NotiName.selectDate, object: calendarManager)
    }
    
    func configure() {
        calendarCollection.register(CalendarDayCell.self, forCellWithReuseIdentifier: CalendarDayCell.identifier)
        calendarCollection.register(CalendarHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CalendarHeaderView.identifier)
        calendarCollection.dataSource = calendarDataSource
        calendarCollection.delegate = self
    }
    
    private func createDataSoure() {
        calendarDataSource = CalendarDataSource(dates: calendarManager.dates, sequenceDates: calendarManager.sequenceDates)
    }
    
    @objc func updateSequseDates(_ notification: Notification) {
        guard let sequseDate = notification.userInfo?["sequenceDates"] as? SequenceDates else {
            return
        }
        calendarDataSource?.sequenceDates = sequseDate
    }
}

extension CalendarViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width / 7,
                      height: collectionView.frame.size.width / 7)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: headerViewHight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let month = CalendarHelper.month(index: indexPath.section)
        let day = calendarManager.dates[month]?[indexPath.row] ?? Date()
        if blockOldDaySelect(with: day) { return }
        calendarManager.selectDay(with: day)
        collectionView.reloadData()
    }
    
    private func blockOldDaySelect(with day: Date) -> Bool {
        return day < Date()
    }
}
