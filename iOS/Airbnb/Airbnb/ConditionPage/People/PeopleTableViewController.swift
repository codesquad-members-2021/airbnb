//
//  PeopleTableViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import UIKit
import Combine

class PeopleTableViewController: UITableViewController {

    private var viewModel: PeopleViewModel
    private var titles: [PersonCellInfo]
    private var counts: [Int]
    private var cancelBag = Set<AnyCancellable>()
    
    init(viewModel: PeopleViewModel) {
        self.viewModel = viewModel
        self.titles = viewModel.generateInitalInfo()
        self.counts = viewModel.generateCountInfo()
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 100
        self.tableView.register(PersonCell.nib, forCellReuseIdentifier: PersonCell.reuseIdentifier)
        self.tableView.allowsSelection = false
        self.tableView.isScrollEnabled = false
        bind()
    }

}

// MARK: - Table view data source
    
extension PeopleTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> PersonCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonCell.reuseIdentifier, for: indexPath) as? PersonCell else { return PersonCell() }
        
        cell.setViewModel(with: viewModel)
        cell.setInitialUI(with: titles[indexPath.row])
        cell.changeCountLabel(with: "\(counts[indexPath.row])")
        cell.isButtonEnable()
        return cell
    }

}

extension PeopleTableViewController {
 
    private func bind() {
        viewModel.$adultNum
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { _ in
                self.counts = self.viewModel.generateCountInfo()
                self.tableView.reloadData()
            })
            .store(in: &cancelBag)
        
        viewModel.$kidNum
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { _ in
                self.counts = self.viewModel.generateCountInfo()
                self.tableView.reloadData()
            })
            .store(in: &cancelBag)
        
        viewModel.$infantNum
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { _ in
                self.counts = self.viewModel.generateCountInfo()
                self.tableView.reloadData()
            })
            .store(in: &cancelBag)
    }
}
