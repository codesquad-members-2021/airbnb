//
//  CalendarViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

final class CalendarViewController: UIViewController {

    private let backButtonTitle = "날짜 선택"

    private weak var toolBar: UIToolbar?
    private weak var tableView: UITableView?
    private weak var collectionView: UICollectionView?
    private weak var stackView: UIStackView?
    
    private var tableViewDataSource: AccommodationConditionTableViewDataSource?
    private var collecionViewDataSource: CalendarCollectionViewDataSource?
    
    var location: LocationSearchResult?
    
    override func loadView() {
        super.loadView()
        addToolBar()
        addTableView()
        addStackView()
        addCollectionView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewDataSource = AccommodationConditionTableViewDataSource()
        self.collecionViewDataSource = CalendarCollectionViewDataSource()
        tableView?.dataSource = tableViewDataSource
        collectionView?.dataSource = collecionViewDataSource
        collectionView?.delegate = self
    }
    
    private func addToolBar() {
        let tempFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        let toolBar = UIToolbar(frame: tempFrame)
        toolBar.tintColor = .systemPink
        view.addSubview(toolBar)
        self.toolBar = toolBar
        
        toolBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            toolBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            toolBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            toolBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
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
    }
    
    @objc private func pass(_ sender: UIBarButtonItem) {
        //검색 즉시 실행
    }
    
    @objc private func nextScreen(_ sender: UIBarButtonItem) {
        //다음 화면으로
    }
    
    private func addTableView() {
        let tableView = UITableView()
        let cellId = AccommodationConditionTableViewCell.reuseIdentifier
        tableView.register(AccommodationConditionTableViewCell.self, forCellReuseIdentifier: cellId)
        view.addSubview(tableView)
        self.tableView = tableView
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: toolBar!.topAnchor)
        ])
        tableView.rowHeight = 50
        let tableHeight = tableView.rowHeight * 4
        tableView.heightAnchor.constraint(equalToConstant: tableHeight).isActive = true
        tableView.isScrollEnabled = false
    }
    
    private func addStackView() {
        let stackView = UIStackView()
        view.addSubview(stackView)
        self.stackView = stackView
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.heightAnchor.constraint(equalToConstant: tableView!.rowHeight)
        ])
        let days = ["M", "T", "W", "T", "F", "S", "S"]
        days.forEach { day in
            let label = UILabel()
            label.text = day
            label.textColor = .gray
            label.textAlignment = .center
            stackView.addArrangedSubview(label)
        }
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
    }
    
    private func addCollectionView() {
        let layout = UICollectionViewFlowLayout() //<-요것부터 시작하자!
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let cellId = CalendarCollectionViewCell.reuseIdentifier
        collectionView.register(CalendarCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        let headerId = MonthHeaderCollectionViewCell.reuseIdentifier
        collectionView.register(MonthHeaderCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        self.collectionView = collectionView
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            collectionView.bottomAnchor.constraint(equalTo: tableView!.topAnchor),
            collectionView.topAnchor.constraint(equalTo: stackView!.bottomAnchor)
        ])
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
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let headerId = MonthHeaderCollectionViewCell.reuseIdentifier
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as? MonthHeaderCollectionViewCell ?? MonthHeaderCollectionViewCell()
            return header
        default:
            assert(false)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    
}
