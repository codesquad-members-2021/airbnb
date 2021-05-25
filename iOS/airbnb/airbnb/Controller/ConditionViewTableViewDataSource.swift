//
//  ConditionViewTableView.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/21.
//

import UIKit

class ConditionViewTableViewDataSource: NSObject, UITableViewDataSource {
    
    enum tableViewTitle: String, CaseIterable {
        case location = "위치"
        case date = "체크인/체크아웃"
        case cost = "요금"
        case people = "인원"
    }
    
    private let conditionData: FindingAccommdationCondition
    
    init(condition: FindingAccommdationCondition) {
        self.conditionData = condition
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewTitle.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "locationPeoplecondition", for: indexPath) as? ConditionViewTableViewCell else {
                return CondtionsTableViewCell()
            }
            cell.textLabel?.text = tableViewTitle.allCases[indexPath.row].rawValue
            cell.update(value: conditionData.location)
            return cell
        }
        else if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dateCostcondition", for: indexPath) as? CondtionsTableViewCell else {
                return CondtionsTableViewCell()
            }
            cell.textLabel?.text = tableViewTitle.allCases[indexPath.row].rawValue
            cell.update(minvalue: conditionData.firstDate, maxvalue: conditionData.secondDate)
            return cell
        }
        else if indexPath.row == 2 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dateCostcondition", for: indexPath) as? CondtionsTableViewCell else {
                return CondtionsTableViewCell()
            }
            cell.textLabel?.text = tableViewTitle.allCases[indexPath.row].rawValue
            cell.update(minvalue: conditionData.minCost, maxvalue: conditionData.maxCost)
            return cell
        }
        else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "locationPeoplecondition", for: indexPath) as? ConditionViewTableViewCell else {
                return CondtionsTableViewCell()
            }
            cell.textLabel?.text = tableViewTitle.allCases[indexPath.row].rawValue
            guard let peoplecount = conditionData.people else {
                cell.update(value: "")
                return cell
            }
            cell.update(value: "게스트 " + String(peoplecount) + "명")
            return cell
        }
        
    }
}
