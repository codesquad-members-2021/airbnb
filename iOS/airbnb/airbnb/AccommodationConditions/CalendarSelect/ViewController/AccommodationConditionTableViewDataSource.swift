//
//  AccommodationConditionTableViewDataSource.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import UIKit

class AccommodationConditionTableViewDataSource: NSObject, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = AccommodationConditionTableViewCell.reuseIdentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? AccommodationConditionTableViewCell ?? AccommodationConditionTableViewCell()
        return cell
    }

}
