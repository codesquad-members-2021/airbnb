//
//  CalendarViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

final class CalendarViewController: UIViewController {

    private let backButtonTitle = "날짜 선택"

    private var toolBar: UIToolbar?
    private var tableView: UITableView?
    private var collectionView: UICollectionView?
    private var stackView: UIStackView?
    
    var location: LocationSearchResult?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addToolBar()
        addTableView()
        addStackView()
        addCollectionView()
    }
    
    private func addToolBar() {
        let tempFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        let toolBar = UIToolbar(frame: tempFrame)
        toolBar.tintColor = .systemPink
        view.addSubview(toolBar)
        self.toolBar = toolBar
        
        toolBar.translatesAutoresizingMaskIntoConstraints = false
        toolBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        toolBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        toolBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
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
        let cellId = AccomodationConditionTableViewCell.reuseIdentifier
        tableView.register(AccomodationConditionTableViewCell.self, forCellReuseIdentifier: cellId)
        view.addSubview(tableView)
        self.tableView = tableView
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: toolBar!.topAnchor).isActive = true
        tableView.rowHeight = 50
        let tableHeight = tableView.rowHeight * 4
        tableView.heightAnchor.constraint(equalToConstant: tableHeight).isActive = true
        tableView.isScrollEnabled = false
        tableView.dataSource = self
    }
    
    private func addStackView() {
        let stackView = UIStackView()
        view.addSubview(stackView)
        self.stackView = stackView
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: tableView!.rowHeight).isActive = true
        
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
        let tempFrame = CGRect(x: 0, y: 0, width: 300, height: 100)
        let layout = UICollectionViewLayout() //<-요것부터 시작하자!
        let collectionView = UICollectionView(frame: tempFrame, collectionViewLayout: layout)
        let cellId = CalendarCollectionViewCell.reuseIdentifier
        collectionView.register(CalendarCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        view.addSubview(collectionView)
        self.collectionView = collectionView
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: tableView!.topAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: stackView!.bottomAnchor).isActive = true
        collectionView.dataSource = self
    }

}

extension CalendarViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AccomodationConditionTableViewCell()
        cell.configure()
        return cell
    }
}

extension CalendarViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CalendarCollectionViewCell()
        cell.configure()
        return cell
    }
}
