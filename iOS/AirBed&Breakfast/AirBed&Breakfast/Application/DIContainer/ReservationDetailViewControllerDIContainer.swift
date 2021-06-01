//
//  ReservationDetailViewControllerDIContainer.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/06/01.
//

import Foundation

class ReservationDetailViewControllerDIContainer {
    // for test
    func makeReservationDetailViewModel() -> ReservationDetailViewModelProtocol {
        return ReservationDetailViewModel()
    }
}
