//
//  PriceSliderViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/24.
//

import UIKit
import Combine

class PriceViewController: UIViewController {

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
    
    func setupSearchInfoViewController(for search: SearchManager, from viewController: LocationInfoViewController) {
        self.searchManager = search
        self.locationInfoViewController = viewController
    }
    
    private func addContainerView() {
        guard let controller = locationInfoViewController,
              let searchManager = searchManager else {
            return
        }
        controller.inject(from: searchManager,
                          subject: nextViewControllerSubject,
                          state: .price)
        addChild(controller)
        controller.view.frame = containerView.bounds
        containerView.addSubview(controller.view)
    }
}
