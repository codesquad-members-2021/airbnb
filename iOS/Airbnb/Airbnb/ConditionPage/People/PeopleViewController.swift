//
//  PeopleViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/02.
//

import UIKit
import Combine

class PeopleViewController : UIViewController {
    
    private var conditionViewModel: ConditionViewModel
    private var peopleViewModel: PeopleViewModel
    private var conditionContainerView: UIView!
    private var peopleContainerView: UIView!
    private var cancelBag = Set<AnyCancellable>()
    
    init(conditionViewModel: ConditionViewModel) {
        self.conditionViewModel = conditionViewModel
        self.peopleViewModel = PeopleViewModel()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureConditionContainer()
        configurePeopleContainer()
        configureNavigation()
        configureToolBar()
        bindPeople()
    }

}

extension PeopleViewController {
    
    private func bindPeople() {
        peopleViewModel.$totalNum
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { people in
                self.conditionViewModel.people = people
            })
            .store(in: &cancelBag)
    }
}


extension PeopleViewController {
    
    private func configureConditionContainer() {
        conditionContainerView = UIView()
        conditionContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(conditionContainerView)
        
        NSLayoutConstraint.activate([
            conditionContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            conditionContainerView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -250),
            conditionContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            conditionContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
        
        let vc = ConditionTableViewController(viewModel: conditionViewModel)
        self.addChild(vc)
        conditionContainerView.addSubview(vc.view)
    }
    
    private func configurePeopleContainer() {
        peopleContainerView = UIView()
        peopleContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(peopleContainerView)
        
        NSLayoutConstraint.activate([
            peopleContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            peopleContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            peopleContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
            peopleContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
        
        let vc = PeopleTableViewController(viewModel: peopleViewModel)
        self.addChild(vc)
        peopleContainerView.addSubview(vc.view)
    }
    
}


extension PeopleViewController {
    
    private func configureToolBar() {
        let toolbar = UIToolbar()
        view.addSubview(toolbar)

        toolbar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        toolbar.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 0),
        toolbar.bottomAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.bottomAnchor, multiplier: 0),
        toolbar.trailingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.trailingAnchor, multiplier: 0)
        ])
        
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let toolbarItem1 = UIBarButtonItem(title: "건너뛰기", style: .plain, target: self, action: #selector(nextButtonPressed))
        let toolbarItem2 = UIBarButtonItem(title: "다음", style: .done, target: self, action: #selector(nextButtonPressed))

        let items = [toolbarItem1, flexibleSpace, toolbarItem2]
        items.forEach{ $0.tintColor = .black }
        
        toolbar.setItems(items, animated: true)
    }
    
    private func configureNavigation() {
        self.navigationItem.title = "숙소 찾기"
        let backButton = UIBarButtonItem()
        backButton.title = "Back"
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
    }
    
    @objc func nextButtonPressed() {
        let nextVC = RoomsViewController(conditionViewModel: conditionViewModel)
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}


extension PeopleViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
}
