//
//  FooterTableViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/27.
//

import UIKit

class FooterTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
    }

    private func registerNib(){
        let cell = UINib(nibName: FooterTableViewCell.nibName, bundle: Bundle.main)
        self.tableView.register(cell, forCellReuseIdentifier: FooterTableViewCell.reuseIdentifier)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView
                .dequeueReusableCell(withIdentifier: FooterTableViewCell.reuseIdentifier,
                                     for: indexPath) as? FooterTableViewCell
        else {
            return UITableViewCell()
        }
        cell.title.text = "위치"
        cell.content.text = "서울"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(44)
    }
    
}
