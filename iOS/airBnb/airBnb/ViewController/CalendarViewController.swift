//
//  CalendarViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import UIKit

class CalendarViewController: UIViewController {

    @IBOutlet weak var calendarCollection: UICollectionView!
    
    private var calendarManger = CalendarManager()
    private var calendarDelegate = CalendarDelegate()
    private lazy var calendarDataSource: UICollectionViewDataSource = {
        let dataSource = CalendarDataSource(dates: calendarManger.dates)
        return dataSource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        calendarCollection.register(CalendarDayCell.self, forCellWithReuseIdentifier: CalendarDayCell.identifier)
        calendarCollection.register(CalendarHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CalendarHeaderView.identifier)
        calendarCollection.dataSource = calendarDataSource
        calendarCollection.delegate = calendarDelegate
    }
    
}
