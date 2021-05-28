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
    private var deleteDatesSubject = PassthroughSubject<Void, Never>()
    private var nextViewSubject: PassthroughSubject<Void, Never>?
    
    private var locationInfoViewModel: LocationInfoViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        bind()
    }
    
    func inject(from manager : SearchManager,
                subject: PassthroughSubject<Void,Never>,
                state: State){
        locationInfoViewModel = LocationInfoViewModel(from: manager, of: state)
        nextViewSubject = subject
        deleteDatesSubject.sink { [weak self] _ in
            self?.locationInfoViewModel?.deleteData()
        }.store(in: &cancellable)
    }
        
    private func bind() {
        locationInfoViewModel?.releaseSelectDates().sink { [weak self] (selectDates) in
            self?.checkInOutLabel.text = selectDates
        }.store(in: &cancellable)
        
        locationInfoViewModel?.isEmptySelectDates().sink { [weak self] (enable) in
            self?.nextButton.isEnabled = enable
        }.store(in: &cancellable)
        
        locationInfoViewModel?.skipAndDeleteString().sink { [weak self] (text) in
            self?.skipAndDeleteButton.setTitle(text, for: .normal)
        }.store(in: &cancellable)
        
        locationInfoViewModel?.releasePriceRange().sink { [weak self] (price) in
            self?.priceLabel.text = price
        }.store(in: &cancellable)
        
        locationInfoViewModel?.allowNextButton().sink { [weak self] (allow) in
            self?.nextButton.isEnabled = allow
        }.store(in: &cancellable)
        
        locationInfoViewModel?.showPeopleTotal().sink { [weak self] (people) in
            self?.numOfPeopleLabel.text = "게스트 \(people)명"
        }.store(in: &cancellable)
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        nextViewSubject?.send()
    }
    
    @IBAction func skipAndDeleteButtonTouched(_ sender: UIButton) {
        guard let viewModel = locationInfoViewModel else {
            return
        }
        viewModel.setSkipAndDeleteAction() ?
            self.nextViewSubject?.send() : self.deleteDatesSubject.send()
    
    }
    
}


