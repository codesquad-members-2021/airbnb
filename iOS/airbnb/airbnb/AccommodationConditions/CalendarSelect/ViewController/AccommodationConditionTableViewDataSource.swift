//
//  AccommodationConditionTableViewDataSource.swift
//  airbnb
//
//  Created by Song on 2021/05/27.
//

import UIKit

class AccommodationConditionTableViewDataSource: NSObject, UITableViewDataSource {
    
    private(set) var titles = [String]()
    private(set) var contents = [String]()
    
    func updateTitles(with titles: [String]) {
        self.titles = titles
    }
    
    func updateContents(with contents: [String]) {
        self.contents = contents
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = AccommodationConditionTableViewCell.reuseIdentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? AccommodationConditionTableViewCell ?? AccommodationConditionTableViewCell()
        
        let targetIndex = indexPath.row
        cell.conditionTitle.text = titles[targetIndex]
        cell.conditionContent.text = contents[targetIndex]
        return cell
    }

}
