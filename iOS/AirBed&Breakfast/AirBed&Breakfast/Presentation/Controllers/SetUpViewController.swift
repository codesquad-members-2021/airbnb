//
//  DateSelectionViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit
import HorizonCalendar

protocol DetailSetUpViewInitializable {
    func configureDetailSubViewLayout(of currentContextView: UIView)
    func configureCelendarControlView()
    func deinitializeCalendarControlView()
    func configurePriceControlView()
    func deinitializePriceControlView()
    func configureNumberOfHeadSelectionView()
    func deinitializeNumberOfHeadSelectionView()
    
    func clearCalendarControlView()
    func clearPriceSlideControlView()
    
    func moveToAccommodationSelectionController()
}

class SetUpViewController: UIViewController {
    
    public var designatedLocation: String! = nil

    private var reservationDetailViewController: ReservationDetailViewControllerProtocol!
    public var calendarControlView: CalendarControlView! = nil
    public var priceSlideControlView: PriceSlideControlView! = nil
    public var numberOfHeadSelectionView: NumberOfHeadSelectionView! = nil
    private var currentContextView: String! {
        didSet {
            guard self.currentContextView != nil else { return }
            reservationDetailViewController.setContext(with: self.currentContextView)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCelendarControlView()
    }
    
    override func viewDidLayoutSubviews() {
        reservationDetailViewController.changeLocation(with: self.designatedLocation)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ContainerViewSegue" {
            reservationDetailViewController = segue.destination as? ReservationDetailViewControllerProtocol
            reservationDetailViewController.setDetailSetUpViewInitializer(as: self)
        }
    }
    
}

extension SetUpViewController: DateInfoReceivable {
    
    func updateDateInfo(date: Date, isLowerDate: Bool) {
        reservationDetailViewController.changeDateRange(date: date, isLowerDay: isLowerDate)
    }
    
}

extension SetUpViewController: PriceInfoReceivable {
    
    func updatePriceInfo(lowestPrice: CGFloat, highestPrice: CGFloat) {
        reservationDetailViewController.changePriceRange(lowestPrice: lowestPrice, highestPrice: highestPrice)
    }
    
}

extension SetUpViewController: GuestNumberInfoReceivable {
    
    func addGuest(type: GuestType) {
        reservationDetailViewController.addGuest(type: type)
    }
    
    func reduceGuest(type: GuestType) {
        reservationDetailViewController.deductGuest(type: type)
    }
    
}

extension SetUpViewController: DetailSetUpViewInitializable {
    
    func configureDetailSubViewLayout(of currentContextView: UIView) {
        let reservationDetailViewHeightRatioToView = 0.3

        NSLayoutConstraint.activate([
            currentContextView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            currentContextView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            currentContextView.topAnchor.constraint(equalTo: view.topAnchor),
            currentContextView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: CGFloat((1.0 - reservationDetailViewHeightRatioToView)))
        ])
    }
    
    func configureCelendarControlView() {
        self.currentContextView = String(describing: CalendarControlView.self)
        
        self.calendarControlView = CalendarControlView()
        view.addSubview(calendarControlView)
        calendarControlView.translatesAutoresizingMaskIntoConstraints = false
        configureDetailSubViewLayout(of: calendarControlView)
        calendarControlView.dateInfoReceivable = self
    }
    
    func deinitializeCalendarControlView() {
        self.calendarControlView.dateInfoReceivable = nil
        self.calendarControlView.removeConstraints(self.calendarControlView.constraints)
        self.calendarControlView.removeFromSuperview()
        self.calendarControlView = nil
        self.currentContextView = nil
    }
    
    func configurePriceControlView() {
        self.currentContextView = String(describing: PriceSlideControlView.self)
        
        self.priceSlideControlView = PriceSlideControlView()
        view.addSubview(priceSlideControlView)
        priceSlideControlView.translatesAutoresizingMaskIntoConstraints = false
        configureDetailSubViewLayout(of: priceSlideControlView)
        priceSlideControlView.priceInfoReceivable = self
    }
    
    func deinitializePriceControlView() {
        self.priceSlideControlView.priceInfoReceivable = nil
        self.priceSlideControlView.removeConstraints(self.priceSlideControlView.constraints)
        self.priceSlideControlView.removeFromSuperview()
        self.priceSlideControlView = nil
        self.currentContextView = nil
    }
    
    func configureNumberOfHeadSelectionView() {
        self.currentContextView = String(describing: NumberOfHeadSelectionView.self)
        
        self.numberOfHeadSelectionView = NumberOfHeadSelectionView()
        view.addSubview(numberOfHeadSelectionView)
        numberOfHeadSelectionView.translatesAutoresizingMaskIntoConstraints = false
        configureDetailSubViewLayout(of: numberOfHeadSelectionView)
        numberOfHeadSelectionView.backgroundColor = .brown
        numberOfHeadSelectionView.guestNumberInfoReceivable = self

    }
    
    func deinitializeNumberOfHeadSelectionView() {
        self.numberOfHeadSelectionView.guestNumberInfoReceivable = nil
        self.numberOfHeadSelectionView.removeConstraints(self.numberOfHeadSelectionView.constraints)
        self.numberOfHeadSelectionView.removeFromSuperview()
        self.numberOfHeadSelectionView = nil
        self.currentContextView = nil
    }
    
    func clearCalendarControlView() {
        self.calendarControlView.clearCalendarView()
    }
    
    func clearPriceSlideControlView() {
        self.priceSlideControlView.clearRangeSlider()
    }
    
    func moveToAccommodationSelectionController() {
        let targetVC = self.storyboard?.instantiateViewController(identifier: String(describing: AccommodationSelectViewController.self)) as! AccommodationSelectViewController
        
        self.navigationController?.pushViewController(targetVC, animated: false)
    }
}
    

