//
//  LocationInfoViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/24.
//

import UIKit
import Combine
class LocationInfoViewController: UIViewController{

    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var checkInOutLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var numOfPeopleLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var skipAndDeleteButton: UIButton!
    
    private var cancellable = Set<AnyCancellable>()
    private var locationInfoViewModel: LocationInfoViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    func inject(from manager : SearchManager){
        locationInfoViewModel = LocationInfoViewModel(from: manager)
    }
        
    func bind() {
        locationInfoViewModel?.releaseSelectDates().sink { [weak self] (selectDates) in
            self?.checkInOutLabel.text = selectDates
        }.store(in: &cancellable)
        
        locationInfoViewModel?.isEmptySelectDates().sink { [weak self] (enable) in
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
    
    @IBAction func skipAndDeleteButtonTouched(_ sender: UIButton) {
        
    }
    
}


