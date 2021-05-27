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
    @IBOutlet weak var priceMinLabel: UILabel!
    @IBOutlet weak var priceMaxLabel: UILabel!
    @IBOutlet weak var priceAgeLabel: UILabel!
    private lazy var rangeSlider: priceSlider = {
        let slider = priceSlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self,
                         action: #selector(priceSliderValueChanged(_:)),
                         for: .valueChanged)
        return slider
    }()
    
    private let nextViewControllerSubject = PassthroughSubject<Void,Never>()
    private var cancellable = Set<AnyCancellable>()
    
    private var locationInfoViewController : LocationInfoViewController?
    private var searchManager: SearchManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureRangeView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addContainerView()
    }

    override func viewDidLayoutSubviews() {
        rangeSlider.updateLayerFrames()
    }
    
    func setupSearchInfoViewController(for search: SearchManager, from viewController: LocationInfoViewController) {
        self.searchManager = search
        self.locationInfoViewController = viewController
    }
    
    private func configureRangeView() {
        view.addSubview(rangeSlider)
        rangeSlider.translatesAutoresizingMaskIntoConstraints = false
        rangeSlider.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        rangeSlider.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        rangeSlider.topAnchor.constraint(equalTo: priceAgeLabel.bottomAnchor, constant: 50).isActive = true
        rangeSlider.heightAnchor.constraint(equalToConstant: 80).isActive = true
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
    
    private func bind() {
        nextViewControllerSubject.sink { _ in
            
        }.store(in: &cancellable)
    }
    
    @objc private func priceSliderValueChanged(_ priceSlider: priceSlider) {
        searchManager?.changePrice(from: priceSlider)
        DispatchQueue.main.async { [weak self] in
            self?.priceMinLabel.text = priceSlider.lowerValue.converNumberFormatter()
            self?.priceMaxLabel.text = priceSlider.upperValue.converNumberFormatter()
        }
    }
}
