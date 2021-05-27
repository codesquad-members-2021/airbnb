//
//  CalendarViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

final class CalendarViewController: UIViewController {

    private let backButtonTitle = "날짜 선택"

    private lazy var toolBar: UIToolbar = {
        let tempFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        let toolBar = UIToolbar(frame: tempFrame)
        toolBar.tintColor = .systemPink
        toolBar.translatesAutoresizingMaskIntoConstraints = false
        
        let passButton = UIBarButtonItem(title: "건너뛰기",
                                         style: .plain,
                                         target: self,
                                         action: #selector(pass))
        let spacing = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let nextButton = UIBarButtonItem(title: "다음",
                                         style: .plain,
                                         target: self,
                                         action: #selector(nextScreen))
        nextButton.isEnabled = false
        toolBar.setItems([passButton, spacing, nextButton], animated: true)
        return toolBar
    }()
    
    private lazy var accommodationConditionTableView: UITableView = {
        let tableView = UITableView()
        tableView.rowHeight = 50
        tableView.isScrollEnabled = false
        
        let cellId = AccommodationConditionTableViewCell.reuseIdentifier
        tableView.register(AccommodationConditionTableViewCell.self, forCellReuseIdentifier: cellId)
        
        return tableView
    }()
    
    private lazy var calendarCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.showsVerticalScrollIndicator = false
        
        let cellId = CalendarCollectionViewCell.reuseIdentifier
        collectionView.register(CalendarCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        let headerId = MonthHeaderCollectionViewCell.reuseIdentifier
        collectionView.register(MonthHeaderCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)

        return collectionView
    }()
    
    private lazy var weekdayStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        let weekdays = ["S", "M", "T", "W", "T", "F", "S"]
        weekdays.forEach { day in
            let label = UILabel()
            label.text = day
            label.textColor = .gray
            label.textAlignment = .center
            stackView.addArrangedSubview(label)
        }
        return stackView
    }()
    
    private var tableViewDataSource: AccommodationConditionTableViewDataSource?
    private var collecionViewDataSource: CalendarCollectionViewDataSource?
    
    private var calendarManager: CalendarManager?
    
    var location: LocationSearchResult?
    
    override func loadView() {
        super.loadView()
        configure()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.calendarManager = CalendarManager()
        self.tableViewDataSource = AccommodationConditionTableViewDataSource()
        self.collecionViewDataSource = CalendarCollectionViewDataSource(calendarManager: calendarManager!)
        accommodationConditionTableView.dataSource = tableViewDataSource
        calendarCollectionView.dataSource = collecionViewDataSource
        calendarCollectionView.delegate = self
    }
    
    private func configure() {
        addToolBar()
        addTableView()
        addStackView()
        addCollectionView()
    }
    
    private func addToolBar() {
        view.addSubview(toolBar)
        toolBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            toolBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            toolBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            toolBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    private func addTableView() {
        view.addSubview(accommodationConditionTableView)
        accommodationConditionTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            accommodationConditionTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            accommodationConditionTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            accommodationConditionTableView.bottomAnchor.constraint(equalTo: toolBar.topAnchor),
            accommodationConditionTableView.heightAnchor.constraint(equalToConstant: accommodationConditionTableView.rowHeight * 4)
        ])
    }
    
    private func addStackView() {
        view.addSubview(weekdayStackView)
        weekdayStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            weekdayStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            weekdayStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            weekdayStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            weekdayStackView.heightAnchor.constraint(equalToConstant: accommodationConditionTableView.rowHeight)
        ])
    }
    
    private func addCollectionView() {
        view.addSubview(calendarCollectionView)
        calendarCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            calendarCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            calendarCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            calendarCollectionView.bottomAnchor.constraint(equalTo: accommodationConditionTableView.topAnchor),
            calendarCollectionView.topAnchor.constraint(equalTo: weekdayStackView.bottomAnchor)
        ])
    }
    
    @objc private func pass(_ sender: UIBarButtonItem) {
        //검색 즉시 실행
    }
    
    @objc private func nextScreen(_ sender: UIBarButtonItem) {
        //다음 화면으로
    }

}

extension CalendarViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.frame.width / 7
        let cellHeight = cellWidth
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 80)
    }

}
