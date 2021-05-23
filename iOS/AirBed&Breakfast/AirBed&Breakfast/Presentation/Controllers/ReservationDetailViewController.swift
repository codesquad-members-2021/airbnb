//
//  ReservationDetailViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/20.
//

import UIKit

protocol ReservationDetailViewControllerProtocol {
    func changeLocation()
    func changeDateRange(date: Date, isLowerDay: Bool)
    func changePriceRange()
    func changeNumberOfHeads()
}

class ReservationDetailViewController: UIViewController {
    @IBOutlet weak var reservationDetailTableView: UITableView!
    @IBOutlet weak var deleteCurrentDetailButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var lowerDate: Date?
    var upperDate: Date?
    
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
    
    func changeDateRange(date: Date, isLowerDay: Bool) {
        let indexPath = IndexPath(row: 1, section: 0)
        let cell = reservationDetailTableView.cellForRow(at: indexPath) as! ReservationDetailTableViewCell
        
        if isLowerDay {
            self.lowerDate = date
            self.upperDate = nil
            cell.detailContentsLabel.text = "\(date.month)월 \(date.day)일"
        } else {
            self.upperDate = date
            cell.detailContentsLabel.text = "\(cell.detailContentsLabel.text!) ~ \(date.month)월 \(date.day)일"
        }
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
