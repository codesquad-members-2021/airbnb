//
//  PeopleViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/28.
//

import UIKit
import Combine

class PeopleViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    private let nextViewControllerSubject = PassthroughSubject<Void,Never>()
    private var cancellable = Set<AnyCancellable>()
    
    private var locationInfoViewController : LocationInfoViewController?
    private var searchManager: SearchManager?
    @IBOutlet var buttonsViewModel: ButtonsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsViewModel.makeButtonsMapper()
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addContainerView()
    }
    
    private func addContainerView() {
        guard let controller = locationInfoViewController,
              let searchManager = searchManager else {
            return
        }
        controller.inject(from: searchManager,
                          subject: nextViewControllerSubject,
                          state: .people)
        addChild(controller)
        controller.view.frame = containerView.bounds
        containerView.addSubview(controller.view)
    }
    
    func setupSearchInfoViewController(for search: SearchManager, from viewController: LocationInfoViewController) {
        self.searchManager = search
        self.locationInfoViewController = viewController
    }
    
    private func bind() {
        buttonsViewModel.bind { (type, action) in
            switch action {
            case .plus:
                self.searchManager?.increasePeople(from: type)
            case .minus:
                self.searchManager?.decreasePeoeple(from: type)
            }
        }
    }
}
