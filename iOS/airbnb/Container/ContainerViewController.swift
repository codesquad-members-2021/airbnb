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
    @IBOutlet weak var skipButton: UIBarButtonItem!
    @IBOutlet weak var nextButton: UIBarButtonItem!
    
     enum PresentOrder: CaseIterable {
        case calandar
        case price
        case person
        case hotel
    }
    
    weak var coordinator: SearchCoodinator?
    var childController : [UIViewController] = []
    var dataSource = FooterTableViewDataSource()
    var localName: String = ""
     var order: PresentOrder = .calandar
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "숙소찾기"
        footerConfigure()
        loadCalendarView()
    }
    
    @IBAction func next(_ sender : UIBarButtonItem){
        removeChildView()
        
        switch order {
        case .calandar: break
        case .price: loadPriceGraphView()
        case .person: loadPersonView()
        case .hotel: coordinator?.showHotelList()
        }
    }
    
    func footerConfigure(){
        dataSource.contents.updateValue(localName, forKey: "위치")
        footerTable.dataSource = dataSource
        footerTable.delegate = self
        footerTable.translatesAutoresizingMaskIntoConstraints = false
        footerTable.register(FooterTableViewCell.self, forCellReuseIdentifier: FooterTableViewCell.reuseIdentifier)
        footerTable.tableFooterView = UIView()
    }
}

extension ContainerViewController {
    
    func loadCalendarView(){
        let calendar = CalendarViewController.instantiate(name: StoryBoarded.Search.stringValue)
        calendar.infoDelegate = self
        self.childController.append(calendar)
        self.addChildView(asChildViewController: calendar)
    }
    
    func loadPriceGraphView(){
        let priceViewController = PriceViewController.instantiate(name: StoryBoarded.Search.stringValue)
        priceViewController.infoDelegate = self
        priceViewController.localName = localName
        self.childController.append(priceViewController)
        self.addChildView(asChildViewController: priceViewController)
    }
    
    func loadPersonView(){
        let personViewController = PersonCountViewController.instantiate(name: StoryBoarded.Search.stringValue)
        personViewController.infoDelegate = self
        self.childController.append(personViewController)
        self.addChildView(asChildViewController: personViewController)
        self.nextButton.title = "검색"
    }
    
    func addChildView(asChildViewController viewController: UIViewController) {
        order = order.next()
        skipButton.isEnabled = true
        nextButton.isEnabled = false
        addChild(viewController)
        containerView.addSubview(viewController.view)
        viewController.view.frame = containerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func removeChildView() {
        let viewController = self.childController.removeLast()
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
        skipButton.isEnabled = false
        nextButton.isEnabled = true
    }
    
    func didSelectCost(_ cost: Int) {
        dataSource.contents.updateValue(String(cost), forKey: "요금")
        let indexPath = IndexPath(row: 2, section: 0)
        footerTable.reloadRows(at: [indexPath], with: .top)
        skipButton.isEnabled = false
        nextButton.isEnabled = true
    }
    
    func didSelectPerson(_ person: Int) {
        dataSource.contents["인원"] = "게스트 \(person)명"
        let indexPath = IndexPath(row: 3, section: 0)
        footerTable.reloadRows(at: [indexPath], with: .top)
        skipButton.isEnabled = false
        nextButton.isEnabled = true
    }
    
}


extension ContainerViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(44)
    }
}

