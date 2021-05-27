//
//  CalendarViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import UIKit
import Combine

class CalendarViewController: UIViewController {
    
    @IBOutlet weak var calendarCollection: UICollectionView!
    @IBOutlet weak var containerView: UIView!
    
    private var calendarManager = CalendarManager()
    private var calendarDataSource: CalendarDataSource?
    private let headerViewHight:CGFloat = 60
    private let splitCount:CGFloat = 7
    
    private let didSelectSubject = PassthroughSubject<Void,Never>()
    private let nextViewControllerSubject = PassthroughSubject<Void,Never>()
    private var cancellable = Set<AnyCancellable>()
    
    private let searchManager = SearchManager()
    private let locationInfoViewController = UIStoryboard.create(identifier: LocationInfoViewController.self, name: "LocationInfo")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDataSoure()
        configure()
        bind()
        NotificationCenter.default.addObserver(self, selector: #selector(resetSelectDates(_:)), name: .seletDatesReset, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addContainerView()
    }
    
    private func addContainerView() {
        locationInfoViewController.inject(from: searchManager,
                        subject: nextViewControllerSubject,
                        state: .calerdar)
        addChild(locationInfoViewController)
        locationInfoViewController.view.frame = containerView.bounds
        containerView.addSubview(locationInfoViewController.view)
    }
    
    private func configure() {
        calendarCollection.register(CalendarDayCell.self, forCellWithReuseIdentifier: CalendarDayCell.identifier)
        calendarCollection.register(CalendarHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CalendarHeaderView.identifier)
        calendarCollection.dataSource = calendarDataSource
        calendarCollection.delegate = self
    }
    
    private func createDataSoure() {
        calendarDataSource = CalendarDataSource(dates: calendarManager.dates, sequenceDates: searchManager.selectDates)
    }
    
    private func bind() {
        didSelectSubject.sink { [weak self] _ in
            guard let self = self else {
                return
            }
            self.calendarDataSource?.updateSelectedDate(from: self.searchManager.selectDates)
        }.store(in: &self.cancellable)
        
        moveViewController()
    }
    
    @objc func resetSelectDates(_ notification: Notification) {
        self.calendarDataSource?.resetSelectDates()
        calendarCollection.reloadData()
    }
    
    private func moveViewController() {
        nextViewControllerSubject.sink { [weak self] _ in
            guard let self = self else {
                return
            }
            let priceViewController = UIStoryboard.create(identifier: PriceViewController.self, name: "Price")
            priceViewController.setupSearchInfoViewController(for: self.searchManager, from: self.locationInfoViewController)
            self.navigationController?.pushViewController(priceViewController, animated: true)
        }.store(in: &cancellable)
    }
}

extension CalendarViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width / splitCount,
                      height: collectionView.frame.size.width / splitCount)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: headerViewHight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let month = CalendarHelper.month(index: indexPath.section)
        let day = calendarManager.dates[month]?[indexPath.row] ?? Date()
        if blockOldDaySelect(with: day) { return }
        searchManager.selectDay(from: day)
        didSelectSubject.send()
        collectionView.reloadData()
    }
    
    private func blockOldDaySelect(with day: Date) -> Bool {
        return day < Date()
    }
}
