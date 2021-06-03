//
//  FilterViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/21.
//

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var footerTable: UITableView!
    
    weak var coordinator: SearchCoodinator?
    var dataSource = FooterTableViewDataSource()
    var placeName : String = ""
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "숙소찾기"
        footerConfigure()
        
        loadCalendarView()
    }
    
    func footerConfigure(){
        dataSource.contents.updateValue(placeName, forKey: "위치")
        footerTable.dataSource = dataSource
        footerTable.delegate = self
        footerTable.translatesAutoresizingMaskIntoConstraints = false
        footerTable.register(FooterTableViewCell.self, forCellReuseIdentifier: FooterTableViewCell.reuseIdentifier)
    }
}

extension ContainerViewController {
    
    func loadCalendarView(){
        let calendar = CalendarViewController.instantiate()
        calendar.infoDelegate = self
        self.addChildView(asChildViewController: calendar)
    }
    
    func loadPriceGraphView(){
        
    }
    
    func loadPersonView(){
        
    }
    
    func addChildView(asChildViewController viewController: UIViewController) {
        addChild(viewController)
        containerView.addSubview(viewController.view)
        viewController.view.frame = containerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func removeChildView(asChildViewController viewController : UIViewController){
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }
}

extension ContainerViewController : SelectInfoDelegate {
    
    func didSelectDay(_ date: Day?) {
        guard let date = date else {
            return
        }
        dataSource.contents["체크인/체크아웃"] = date.date.toString()
        let indexPath = IndexPath(row: 1, section: 0)
        footerTable.reloadRows(at: [indexPath], with: .top)
    }
    
    func didSelectCost(_ cost: Int) {
        dataSource.contents.updateValue(String(cost), forKey: "요금")
        let indexPath = IndexPath(row: 2, section: 0)
        footerTable.reloadRows(at: [indexPath], with: .top)
    }
    
    func didSelectPerson(_ person: Int) {
        dataSource.contents["인원"] = String(person)
        let indexPath = IndexPath(row: 3, section: 0)
        footerTable.reloadRows(at: [indexPath], with: .top)
    }
    
}


extension ContainerViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(44)
    }
}

extension ContainerViewController : Storyboarded {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Search", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
