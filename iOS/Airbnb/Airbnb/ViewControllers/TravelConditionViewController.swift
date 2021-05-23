//
//  TravelConditionViewController.swift
//  Airbnb
//
//  Created by Ador on 2021/05/22.
//

import UIKit

class TravelConditionViewController: UIViewController {
    
    @IBOutlet weak var conditionTableView: UITableView!
    
    private let toolbar: UIToolbar = {
        let toolbar = UIToolbar()
        toolbar.setItems([UIBarButtonItem(title: "건너뛰기", style: .plain, target: nil, action: nil)], animated: false)
        return toolbar
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UINib(nibName: PeopleTableViewCell.reuseId, bundle: nil),
                           forCellReuseIdentifier: PeopleTableViewCell.reuseId)
        tableView.isScrollEnabled = false
        tableView.rowHeight = 100
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
    }
    
    private func setToolBar() {
        view.addSubview(toolbar)
        toolbar.frame = CGRect(x: 0, y: view.frame.height - 34 - 44, width: view.frame.width, height: 44)
    }
    
    private func setTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: toolbar.topAnchor).isActive = true
    }
}

extension TravelConditionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}

extension TravelConditionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PeopleTableViewCell.reuseId, for: indexPath) as! PeopleTableViewCell
        return cell
    }
}
