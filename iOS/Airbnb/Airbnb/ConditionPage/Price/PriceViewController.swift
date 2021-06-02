//
//  PriceViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/02.
//

import UIKit
import Combine

class PriceViewController: UIViewController {

    
    private var conditionViewModel: ConditionViewModel
    private var priceUseCase = PriceUseCase()
    private var cancelBag = Set<AnyCancellable>()
    private var containerView: UIView!
    let label = UILabel()
    
    init(conditionViewModel: ConditionViewModel) {
        self.conditionViewModel = conditionViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        priceUseCase.requestMainPage(condition: Condition(cityId: conditionViewModel.city, schedule: conditionViewModel.schedule, price: conditionViewModel.price, people: conditionViewModel.people))
        bind()
        configure()
        configureContainer()
        configureNavigation()
        configureToolBar()
    }

    
}

extension PriceViewController {
    
    private func bind() {
        priceUseCase.$prices.receive(on: DispatchQueue.main)
            .sink { prices in
                guard let prices = prices else { return }
                print(prices)
            }
            .store(in: &cancelBag)
        
        priceUseCase.$error
            .receive(on: DispatchQueue.main)
            .sink { error in
                guard let error = error else { return }
                print(error) ///사용자에게 에러 표시하는 부분 미구현
            }.store(in: &cancelBag)
    }
}


extension PriceViewController {
    
    private func configure() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        let inset = CGFloat(10)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: inset),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -inset),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: inset),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -inset)
        ])

    }
    
}


extension PriceViewController {
    private func configureContainer() {
        containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            containerView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -250),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
        containerView.backgroundColor = .cyan
        let vc = ConditionTableViewController(viewModel: conditionViewModel)
        self.addChild(vc)
        containerView.addSubview(vc.view)
    }
}


extension PriceViewController {
    
    private func configureToolBar() {
        self.tabBarController?.tabBar.isHidden = true
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
        let nextVC = PeopleViewController()//PriceViewController(conditionViewModel: conditionViewModel)
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

class PeopleViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
