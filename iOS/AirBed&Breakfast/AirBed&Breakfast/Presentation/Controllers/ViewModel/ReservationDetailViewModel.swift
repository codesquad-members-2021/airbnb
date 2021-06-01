//
//  ReservationDetailViewModel.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/06/01.
//

import Foundation
import Combine

protocol ReservationDetailViewModelProtocol {
    func changeDateRange(date: Date, isLowerDay: Bool)
    func changePriceRange(lowestPrice: Float, highestPrice: Float)
    func changeGuestNumber(type: GuestType, toAdd: Bool)
    
    func didUpdateLowerDate(completion: @escaping (Date) -> ())
    func didUpdateUpperDate(completion: @escaping (Date?) -> ())
    func didUpdatePriceRange(completion: @escaping (Float, Float) -> ())
    func didUpdateGuestList(completion: @escaping ([GuestType: Int]) -> ())
    
    func clearGuestList()
}

class ReservationDetailViewModel {
    
    var location: String?
    private var subscriptions = Set<AnyCancellable>()
    
    @Published var lowerDate: Date?
    @Published var upperDate: Date?
    @Published var priceRange: (lowestPrice: Float?, highestPrice: Float?)
    @Published var guestList: [GuestType: Int] = [.adult: 0,
                                                  .child: 0,
                                                  .infant: 0]
    
}

extension ReservationDetailViewModel: ReservationDetailViewModelProtocol {
    
    func didUpdateGuestList(completion: @escaping ([GuestType : Int]) -> ()) {
        $guestList
            .receive(on: DispatchQueue.main)
            .sink { (guestList) in
                completion(guestList)
            }.store(in: &subscriptions)
    }
    
    
    func didUpdatePriceRange(completion: @escaping (Float, Float) -> ()) {
        $priceRange
            .receive(on: DispatchQueue.main)
            .sink { (lowestPrice, highestPrice) in
                if lowestPrice != nil && highestPrice != nil {
                    completion(lowestPrice!, highestPrice!)
                } else {
                    return
                }
            }.store(in: &subscriptions)
    }
    
    func didUpdateLowerDate(completion: @escaping (Date) -> ()) {
        $lowerDate
            .receive(on: DispatchQueue.main)
            .sink { (date) in
                if date != nil {
                    completion(date!)
                } else {
                    return
                }
        }.store(in: &subscriptions)
    }
    
    func didUpdateUpperDate(completion: @escaping (Date?) -> ()) {
        $upperDate
            .receive(on: DispatchQueue.main)
            .sink { (date) in
                completion(date)
            }.store(in: &subscriptions)
    }
    
    func changeDateRange(date: Date, isLowerDay: Bool) {
        if isLowerDay {
            self.lowerDate = date
            self.upperDate = nil
        } else {
            self.upperDate = date
        }
    }
    
    func changePriceRange(lowestPrice: Float, highestPrice: Float) {
        self.priceRange.lowestPrice = lowestPrice
        self.priceRange.highestPrice = highestPrice
    }
    
    func changeGuestNumber(type: GuestType, toAdd: Bool) {
        if toAdd {
            self.guestList[type]? += 1
            
            if (type == .child && guestList[.adult] == 0) || (type == .infant && guestList[.adult] == 0) {
                self.guestList[.adult]! += 1
            }
        } else {
            self.guestList[type]? -= 1
        }
    }
    
    func clearGuestList() {
        self.guestList = self.guestList.mapValues { (count) -> Int in 0 }
    }
    
}
