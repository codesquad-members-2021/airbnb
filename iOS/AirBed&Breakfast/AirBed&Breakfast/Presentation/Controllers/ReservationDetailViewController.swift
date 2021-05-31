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
    func changeNumberOfHead()
}

class ReservationDetailViewController: UIViewController {
    
    @IBOutlet weak var locationDetailLabel: UILabel!
    @IBOutlet weak var dateRangeDetailLabel: UILabel!
    @IBOutlet weak var priceRangeDetailLabel: UILabel!
    @IBOutlet weak var numberOfHeadDetailLabel: UILabel!
    @IBOutlet weak var deleteCurrentDetailButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var detailSetUpViewInitializer: DetailSetUpViewInitializable? = nil
    var currentContext: String?
    var location: String?
    var lowerDate: Date?
    var upperDate: Date?
    var lowestPrice: CGFloat?
    var highestPrice: CGFloat?
    var numberOfHead: [String: Int] = ["성인": 0,
                                       "어린이": 0,
                                       "유아": 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func deleteCurrentDetailButtonPressed(_ sender: UIButton) {
        switch currentContext {
        case String(describing: CalendarControlView.self):
            self.dateRangeDetailLabel.text = ""
            self.detailSetUpViewInitializer?.clearCalendarControlView()
        case String(describing: PriceSlideControlView.self):
            self.priceRangeDetailLabel.text = ""
            self.detailSetUpViewInitializer?.clearPriceSlideControlView()
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

        if isLowerDay {
            self.lowerDate = date
            self.upperDate = nil
            self.dateRangeDetailLabel.text = "\(date.month)월 \(date.day)일"
            self.nextButton.isEnabled = false
        } else {
            self.upperDate = date
            self.dateRangeDetailLabel.text = "\(dateRangeDetailLabel.text!) - \(date.month)월 \(date.day)일"
            self.nextButton.isEnabled = true
        }
        
        self.deleteCurrentDetailButton.isEnabled = true
    }
    
    func changePriceRange(lowestPrice: CGFloat, highestPrice: CGFloat) {
        self.lowestPrice = lowestPrice
        self.highestPrice = highestPrice
        
        self.priceRangeDetailLabel.text = "\(String(format: "%.0f", lowestPrice))원 - \(String(format: "%.0f", highestPrice))원"
        self.nextButton.isEnabled = true
        self.deleteCurrentDetailButton.isEnabled = true
    }
    
    func changeNumberOfHead() {
        //todo
    }
    
}
