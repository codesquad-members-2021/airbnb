//
//  LocationInfoViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/24.
//

import UIKit

class LocationInfoViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var checkInOutLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var numOfPeopleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        add()
    }
    
    func add() {
        let storyboard = UIStoryboard(name: "Calendar", bundle: nil)
        guard let bottomView = storyboard.instantiateViewController(withIdentifier: "Calendar") as? CalendarViewController
        else { return }
        addChild(bottomView)
                
        bottomView.view.frame = containerView.bounds
        containerView.addSubview(bottomView.view)
    }
}
