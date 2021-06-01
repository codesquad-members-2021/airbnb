//
//  ConditionTableViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/31.
//

import UIKit

class SomeController: UIViewController {
    private var containerView: UIView!
    
    override func viewDidLoad(){
        self.view.backgroundColor = .white
        configureContainer()
    }
    
    private func configureContainer() {
        containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 650),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        ])
        containerView.backgroundColor = .cyan
        let vc = ConditionTableViewController(viewModel: ConditionViewModel())
        self.addChild(vc)
        containerView.addSubview(vc.view)
    }
}

class ConditionTableViewController: UITableViewController {

    private var viewModel: ConditionViewModel
    private var dataSource: [CellInfo]
    
    init(viewModel: ConditionViewModel) {
        self.viewModel = viewModel
        self.dataSource = viewModel.generateFirstCondition()
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(ConditionCell.self, forCellReuseIdentifier: ConditionCell.reuseIdentifier)
        self.tableView.allowsSelection = false
        self.tableView.isScrollEnabled = false
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ConditionCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ConditionCell.reuseIdentifier, for: indexPath) as? ConditionCell else { return ConditionCell() }
        
        cell.fillUI(with: dataSource[indexPath.row])
        return cell
    }

}
