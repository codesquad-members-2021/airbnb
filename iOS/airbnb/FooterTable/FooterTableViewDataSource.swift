//
//  FooterTableViewDataSource.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/02.
//

import UIKit

class FooterTableViewDataSource: NSObject, UITableViewDataSource {
    
    private let infoTitle = ["위치", "체크인/체크아웃", "요금", "인원"]
    var contents : [String:String] = [
        "위치": "",
        "체크인/체크아웃": "",
        "요금": "",
        "인원": ""
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FooterTableViewCell.reuseIdentifier, for: indexPath) as? FooterTableViewCell else {
            return UITableViewCell()
        }
        let title = infoTitle[indexPath.row]
        cell.title.text = title
        cell.content.text = contents[title]
        return cell
    }

}
