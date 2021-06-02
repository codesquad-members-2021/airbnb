//
//  FilterViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/21.
//

import UIKit

class ContainerViewController: UIViewController {
    
    
    @IBOutlet weak var footerTable: UITableView!
    
    weak var coordinator: SearchCoodinator?
    var dataSource = FooterTableViewDataSource()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "숙소찾기"
        footerConfigure()
    }
    
    func footerConfigure(){
        footerTable.dataSource = dataSource
        footerTable.delegate = self
        footerTable.translatesAutoresizingMaskIntoConstraints = false
        footerTable.register(FooterTableViewCell.self, forCellReuseIdentifier: FooterTableViewCell.reuseIdentifier)
    }
}

extension ContainerViewController : SelectInfoDelegate {
    func didselectPlace(_ place: String) {
        dataSource.contents["위치"] = place
        footerTable.reloadData()
    }
    
    func didSelectDay(_ date: Day) {
        
    }
    
    func didSelectPerson(_ person: Int) {
        
    }
    
    func didSelectCost(_ cost: Int) {
        
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
