//
//  ConditionViewTableView.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/21.
//

import UIKit

class FindingAccommodationTableViewDataSource: NSObject, UITableViewDataSource {
    
    enum TableViewTitle: CustomStringConvertible, CaseIterable {
        var description: String {
            switch self {
            case .location:
                return "위치"
            case .date:
                return "체크인/체크아웃"
            case .cost:
                return "요금"
            case .people:
                return "인원"
            }
        }
        case location
        case date
        case cost
        case people
    }
    
    private let conditionData: FindingAccommdationCondition
    
    init( condition: FindingAccommdationCondition) {
        self.conditionData = condition
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableViewTitle.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "locationPeoplecondition", for: indexPath) as? FindingAccommodationViewTableViewCell else {
                return FindingAccommodationTableViewCell()
            }
            cell.textLabel?.text = TableViewTitle.allCases[indexPath.row].description
            cell.update(value: conditionData.location)
            return cell
        }
        else if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dateCostcondition", for: indexPath) as? FindingAccommodationTableViewCell else {
                return FindingAccommodationTableViewCell()
            }
            cell.textLabel?.text = TableViewTitle.allCases[indexPath.row].description
            cell.update(minvalue: conditionData.firstDate, maxvalue: conditionData.secondDate)
            return cell
        }
        else if indexPath.row == 2 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dateCostcondition", for: indexPath) as? FindingAccommodationTableViewCell else {
                return FindingAccommodationTableViewCell()
            }
            cell.textLabel?.text = TableViewTitle.allCases[indexPath.row].description
            cell.update(minvalue: conditionData.decimalWon(value: conditionData.minCostDescription), maxvalue: conditionData.decimalWon(value: conditionData.maxCostDescription))
            return cell
        }
        else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "locationPeoplecondition", for: indexPath) as? FindingAccommodationViewTableViewCell else {
                return FindingAccommodationTableViewCell()
            }
            cell.textLabel?.text = TableViewTitle.allCases[indexPath.row].description
            if conditionData.people == 0 {
                cell.update(value: "")
                return cell
            }
            cell.update(value: "게스트 " + conditionData.peopleCount + "명")
            return cell
        }
        
    }
}
