//
//  DateSelectionViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit

class DateSelectionViewController: UIViewController {

    var reservationViewController: ReservationDetailViewControllerProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reservationViewController?.changeLocation()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "containerViewSegue" {
            reservationViewController = segue.destination as? ReservationDetailViewController
        }
    }
}
