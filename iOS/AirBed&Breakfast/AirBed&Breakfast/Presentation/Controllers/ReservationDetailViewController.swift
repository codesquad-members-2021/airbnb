//
//  ReservationDetailViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit

protocol ReservationDetailViewControllerProtocol {
    func setDetailSetUpViewInitializer(as initializer: DetailSetUpViewInitializable)
    func setContext(with description: String)
    func changeLocation(with location: String)
    func changeDateRange(date: Date, isLowerDay: Bool)
    func changePriceRange(lowestPrice: CGFloat, highestPrice: CGFloat)
    func addGuest(type: GuestType)
    func deductGuest(type: GuestType)
    func inject(viewModel: ReservationDetailViewModelProtocol)
}

class ReservationDetailViewController: UIViewController {
    
    var detailSetUpViewInitializer: DetailSetUpViewInitializable? = nil
    var currentContext: String?
    var viewModel: ReservationDetailViewModelProtocol?
    
    @IBOutlet weak var locationDetailLabel: UILabel!
    @IBOutlet weak var dateRangeDetailLabel: UILabel!
    @IBOutlet weak var priceRangeDetailLabel: UILabel!
    @IBOutlet weak var guestNumberDetailLabel: UILabel!
    @IBOutlet weak var deleteCurrentDetailButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    private func bind() {
        viewModel?.didUpdateLowerDate(completion: { (newLowerDate) in
            self.dateRangeDetailLabel.text = "\(newLowerDate.month)월 \(newLowerDate.day)일"
            self.nextButton.isEnabled = false
        })
        
        viewModel?.didUpdateUpperDate(completion: { (newUpperDate) in
            if newUpperDate == nil {
                self.dateRangeDetailLabel.text = "\(self.dateRangeDetailLabel.text!)"
                self.nextButton.isEnabled = false
            } else {
                self.dateRangeDetailLabel.text = "\(self.dateRangeDetailLabel.text!) - \(newUpperDate!.month)월 \(newUpperDate!.day)일"
                self.nextButton.isEnabled = true
            }
        })
        
        viewModel?.didUpdatePriceRange(completion: { (newLowestPrice, newHighestPrice) in
            self.priceRangeDetailLabel.text = "\(String(format: "%.0f", newLowestPrice)) - \(String(format: "%.0f", newHighestPrice))"
            self.nextButton.isEnabled = true
            self.deleteCurrentDetailButton.isEnabled = true
        })
        
        viewModel?.didUpdateGuestList(completion: { (guestList) in
            NotificationCenter.default.post(name: .didChangeGuestNumber, object: nil, userInfo: guestList)
            
            if guestList[.adult] == 0 &&
               guestList[.child] == 0 &&
               guestList[.infant] == 0
            {
                self.deleteCurrentDetailButton.isEnabled = false
            } else {
                self.deleteCurrentDetailButton.isEnabled = true
            }
            
            if guestList[.adult]! > 0 {
                self.nextButton.isEnabled = true
            } else {
                self.nextButton.isEnabled = false
            }
            
            self.setNumberOfGuestDetailLabel(with: guestList)
        })
    }
    
    private func setNumberOfGuestDetailLabel(with guestList: [GuestType: Int]) {
        self.guestNumberDetailLabel.text = "게스트 \(guestList[.adult]! + guestList[.child]!)명"
        
        if guestList[.infant]! > 0 {
            guestNumberDetailLabel.text?.append(" 유아 \(guestList[.infant]!)명")
        }
    }
    
    @IBAction func deleteCurrentDetailButtonPressed(_ sender: UIButton) {
        switch currentContext {
        case String(describing: CalendarControlView.self):
            self.dateRangeDetailLabel.text = ""
            self.detailSetUpViewInitializer?.clearCalendarControlView()
        case String(describing: PriceSlideControlView.self):
            self.priceRangeDetailLabel.text = ""
            self.detailSetUpViewInitializer?.clearPriceSlideControlView()
        case String(describing: GuestNumberSelectionView.self):
            self.guestNumberDetailLabel.text = ""
            self.viewModel?.clearGuestList()
        default:
            break
        }
        
        self.deleteCurrentDetailButton.isEnabled = false
        self.nextButton.isEnabled = false
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        switch currentContext {
        case String(describing: CalendarControlView.self):
            detailSetUpViewInitializer?.deinitializeCalendarControlView()
            detailSetUpViewInitializer?.configurePriceControlView()
        case String(describing: PriceSlideControlView.self):
            detailSetUpViewInitializer?.deinitializePriceControlView()
            detailSetUpViewInitializer?.configureNumberOfHeadSelectionView()
        case String(describing: GuestNumberSelectionView.self):
            self.detailSetUpViewInitializer?.deinitializeNumberOfHeadSelectionView()
            self.detailSetUpViewInitializer?.moveToAccommodationSelectionController()
        default: break
        }
        
        deleteCurrentDetailButton.isEnabled = false
        nextButton.isEnabled = false
    }
    
}

extension ReservationDetailViewController: ReservationDetailViewControllerProtocol {
    
    func setDetailSetUpViewInitializer(as initializer: DetailSetUpViewInitializable) {
        self.detailSetUpViewInitializer = initializer
    }
    
    func setContext(with description: String) {
        self.currentContext = description
    }
    
    func changeLocation(with location: String) {
        self.locationDetailLabel.text = location
    }
    
    func changeDateRange(date: Date, isLowerDay: Bool) {
        viewModel?.changeDateRange(date: date, isLowerDay: isLowerDay)
    }
    
    func changePriceRange(lowestPrice: CGFloat, highestPrice: CGFloat) {
        self.viewModel?.changePriceRange(lowestPrice: Float(lowestPrice), highestPrice: Float(highestPrice))
    }
    
    func addGuest(type: GuestType) {
        self.viewModel?.changeGuestNumber(type: type, toAdd: true)
    }
    
    func deductGuest(type: GuestType) {
        self.viewModel?.changeGuestNumber(type: type, toAdd: false)
    }
    
    func inject(viewModel: ReservationDetailViewModelProtocol) {
        self.viewModel = viewModel
    }
    
}
