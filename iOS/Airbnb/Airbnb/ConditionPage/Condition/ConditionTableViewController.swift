//
//  ConditionTableViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/31.
//

import UIKit

class ConditionTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ConditionCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ConditionCell", for: indexPath) as? ConditionCell else { return ConditionCell() }

        return cell
    }

}
