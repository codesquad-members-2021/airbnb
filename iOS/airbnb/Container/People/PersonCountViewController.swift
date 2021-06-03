//
//  PersonCountViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit

class PersonCountViewController: UIViewController {
    
    @IBOutlet weak var personCountTable: UITableView!
    weak var infoDelegate : SelectInfoDelegate?
    
    var totalPerson : Int = 0 {
        didSet {
            self.infoDelegate?.didSelectPerson(totalPerson)
        }
    }
    
    let viewModels : [CounterViewModel] = [
        CounterViewModel(person: .adult, limit: "만 13세 이상"),
        CounterViewModel(person: .child, limit: "만 2-12세"),
        CounterViewModel(person: .baby, limit: "만 2세 미만")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
    }
    
    func configureTable(){
        personCountTable.dataSource = self
        personCountTable.delegate = self
        personCountTable.allowsSelection = false
        
        let nib = UINib(nibName: PersonTableViewCell.nibName, bundle: nil)
        personCountTable.register(nib, forCellReuseIdentifier: PersonTableViewCell.reuseIdentifier)
        personCountTable.tableFooterView = UIView()
    }
    
    func calculatorTotalPerson(){
        totalPerson = viewModels.map{ $0.counter.count}.reduce(0,+)
    }
}

extension PersonCountViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(84)
    }
}

extension PersonCountViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.reuseIdentifier,
                                                       for: indexPath) as? PersonTableViewCell
        else {
            return UITableViewCell()
        }
        let viewModel = viewModels[indexPath.row]
        cell.setUp(viewModel)
        
        viewModel.bind(control: UIAction(handler: { action in
            viewModel.counter.increase()
        }), for: .plus, cell: cell)
        viewModel.bind(control: UIAction(handler: { action in
            viewModel.counter.decrease()
        }), for: .minus, cell: cell)
        viewModel.bind(present: {
            cell.setUp(viewModel)
            self.calculatorTotalPerson()
        })
        return cell
    }
    
}
