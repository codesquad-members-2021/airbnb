//
//  CostGraphView.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/26.
//

import UIKit

class CostGraphView: UIView {
    
    @IBOutlet weak var minimumCostLabel: UILabel!
    @IBOutlet weak var maximumCostLabel: UILabel!
    @IBOutlet weak var averageCostLabel: UILabel!
    @IBOutlet weak var graphView: UIView!
    
    func update(minCost: String, maxCost: String, averageCost: String) {
        minimumCostLabel.text = minCost
        maximumCostLabel.text = maxCost
        averageCostLabel.text = averageCost
        graphView.backgroundColor = .red
    }
}
