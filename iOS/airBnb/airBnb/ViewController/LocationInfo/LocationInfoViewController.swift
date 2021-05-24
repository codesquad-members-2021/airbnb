//
//  LocationInfoViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/24.
//

import UIKit
import Combine

class LocationInfoViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var checkInOutLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var numOfPeopleLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    private var cancellable = Set<AnyCancellable>()
    private var searchManager = SearchManager()
    private var locationInfoViewModel = LocationInfoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        add()
        bind()
    }
    
    func add() {
        let storyboard = UIStoryboard(name: "Calendar", bundle: nil)
        guard let bottomView = storyboard.instantiateViewController(withIdentifier: "Calendar") as? CalendarViewController
        else { return }
        addChild(bottomView)
        
        bottomView.view.frame = containerView.bounds
        bottomView.relaySequenceDate().sink { [weak self] (value) in
            self?.locationInfoViewModel.receiveSelectDates(from: value)
        }.store(in: &cancellable)
        containerView.addSubview(bottomView.view)
    }
    
    func bind() {
        locationInfoViewModel.releaseSelectDates().sink { [weak self] (selectDates) in
            self?.checkInOutLabel.text = selectDates
        }.store(in: &cancellable)
        
        locationInfoViewModel.isEmptySelectDates().sink { [weak self] (enable) in
            self?.nextButton.isEnabled = enable
        }.store(in: &cancellable)
        
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        func remove() {
            _ = children.map {
                $0.view.removeFromSuperview()
                $0.removeFromParent()
            }
            
            let priceView = PriceSliderViewController()
            addChild(priceView)
            
            priceView.view.frame = containerView.bounds
            containerView.addSubview(priceView.view)
        }
        remove()
    }
    
    
}


