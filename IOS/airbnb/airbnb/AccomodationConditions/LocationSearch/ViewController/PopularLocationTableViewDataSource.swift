//
//  PopularLocationTableViewDataSource.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import UIKit

final class PopularLocationTableViewDataSource: NSObject, UITableViewDataSource {
    
    private var popularLocations = [PopularLocation]()
    
    func updateLocations(with popularLocations: [PopularLocation]) {
        self.popularLocations = popularLocations
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return popularLocations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = PopularLocationTableViewCell.reuseIdentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PopularLocationTableViewCell ?? PopularLocationTableViewCell()
        
        let targetIndex = indexPath.row
        let textInfos = popularLocations[targetIndex]
        cell.update(with: textInfos)
        
        if let imagePath = popularLocations[targetIndex].cachePath {
            cell.update(with: imagePath)
        }

        return cell
    }
    
}
