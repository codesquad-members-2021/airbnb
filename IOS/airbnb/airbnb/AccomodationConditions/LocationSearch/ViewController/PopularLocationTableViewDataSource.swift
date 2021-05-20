//
//  PopularLocationTableViewDataSource.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import UIKit

final class PopularLocationTableViewDataSource: NSObject, UITableViewDataSource {
    
    private var popularLocations: [PopularLocation]?
    private var popularLocationImagePaths: [String]?
    
    func updateLocations(with popularLocations: [PopularLocation]) {
        self.popularLocations = popularLocations
    }
    
    func updateImagePaths(with popularLocationImagePaths: [String]) {
        self.popularLocationImagePaths = popularLocationImagePaths
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return popularLocations?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = PopularLocationTableViewCell.reuseIdentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PopularLocationTableViewCell ?? PopularLocationTableViewCell()
        
        guard let popularLocations = popularLocations else { return cell }
        
        let targetIndex = indexPath.row
        let textInfos = popularLocations[targetIndex]
        cell.update(with: textInfos)
        
        guard let popularLocationImagePaths = popularLocationImagePaths else { return cell }
        
        let imagePath = popularLocationImagePaths[targetIndex]
        cell.update(with: imagePath)

        return cell
    }
    
}
