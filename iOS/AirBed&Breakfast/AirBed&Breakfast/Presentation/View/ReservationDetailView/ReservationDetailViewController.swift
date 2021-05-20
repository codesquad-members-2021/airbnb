//
//  ReservationDetailViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit

protocol ReservationDetailViewControllerProtocol {
    func changeLocation()
    func changeDateRange()
    func changePriceRange()
    func changeNumberOfHeads()
}

class ReservationDetailViewController: UIViewController {
    @IBOutlet weak var reservationDetailTableView: UITableView!
    @IBOutlet weak var deleteCurrentDetailButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reservationDetailTableView.register(ReservationDetailTableViewCell.nib, forCellReuseIdentifier: ReservationDetailTableViewCell.reuseIdentifier)
        
        reservationDetailTableView.dataSource = self
        reservationDetailTableView.delegate = self
    }
    
    @IBAction func deleteCurrentDetailButtonPressed(_ sender: UIButton) {
    }
    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }
    
}

extension ReservationDetailViewController: ReservationDetailViewControllerProtocol {
    func changeLocation() {
        print("Changed Location")
    }
    
    func changeDateRange() {
        //todo
    }
    
    func changePriceRange() {
        //todo
    }
    
    func changeNumberOfHeads() {
        //todo
    }
}

extension ReservationDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = reservationDetailTableView.dequeueReusableCell(withIdentifier: ReservationDetailTableViewCell.reuseIdentifier) as! ReservationDetailTableViewCell
        
        switch indexPath.row {
        case 0: cell.titleLabel.text = "위치"
        case 1: cell.titleLabel.text = "체크인/체크아웃"
        case 2: cell.titleLabel.text = "요금"
        case 3: cell.titleLabel.text = "인원"
        default: return cell
        }
        
        return cell
    }
    
}

extension ReservationDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.reservationDetailTableView.frame.height/4
    }
}
