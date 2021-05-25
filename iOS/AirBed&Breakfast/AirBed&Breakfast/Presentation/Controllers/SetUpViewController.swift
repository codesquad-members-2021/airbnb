//
//  DateSelectionViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit
import HorizonCalendar

class SetUpViewController: UIViewController {

    private var reservationDetailViewController: ReservationDetailViewControllerProtocol!
    private var calendarControlView: CalendarControlView! = nil
    private var priceSlideControlView: PriceSlideControlView! = nil
    private var currentContextView: String! {
        didSet {
            guard self.currentContextView != nil else { return }
            reservationDetailViewController.setContext(with: self.currentContextView)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCelendarControlView()
        print(calendarControlView.bounds)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containerViewSegue" {
            reservationDetailViewController = segue.destination as? ReservationDetailViewController
        }
    }
    
    private func configureLayout(of currentContextView: UIView) {
        let reservationDetailViewHeightRatioToView = 0.3
        NSLayoutConstraint.activate([
            currentContextView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            currentContextView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            currentContextView.topAnchor.constraint(equalTo: view.topAnchor),
            currentContextView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: CGFloat((1.0 - reservationDetailViewHeightRatioToView)))
        ])
    }
    
    public func configureCelendarControlView() {
        self.currentContextView = String(describing: CalendarControlView.self)
        
        self.calendarControlView = CalendarControlView()
        view.addSubview(calendarControlView)
        calendarControlView.translatesAutoresizingMaskIntoConstraints = false
        configureLayout(of: calendarControlView)
        calendarControlView.dateInfoReceivable = self
    }
    
    public func deinitializeCalendarControlView() {
        self.calendarControlView.dateInfoReceivable = nil
        self.calendarControlView.removeConstraints(self.calendarControlView.constraints)
        self.calendarControlView.removeFromSuperview()
        self.calendarControlView = nil
        self.currentContextView = nil
    }
    
    public func configurePriceControlView() {
        self.currentContextView = String(describing: PriceSlideControlView.self)
        
        self.priceSlideControlView = PriceSlideControlView()
        view.addSubview(priceSlideControlView)
        priceSlideControlView.translatesAutoresizingMaskIntoConstraints = false
        configureLayout(of: priceSlideControlView)
        priceSlideControlView.priceInfoReceivable = self
    }
    
    public func deinitializePriceControlView() {
        self.priceSlideControlView.priceInfoReceivable = nil
        self.priceSlideControlView.removeConstraints(self.priceSlideControlView.constraints)
        self.priceSlideControlView.removeFromSuperview()
        self.priceSlideControlView = nil
        self.currentContextView = nil
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
    

