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
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
}
