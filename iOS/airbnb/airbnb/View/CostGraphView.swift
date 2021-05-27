//
//  CostGraphView.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/26.
//

import UIKit
import SwiftCharts

class CostGraphView: UIView {
    
    @IBOutlet weak var minimumCostLabel: UILabel!
    @IBOutlet weak var maximumCostLabel: UILabel!
    @IBOutlet weak var averageCostLabel: UILabel!
    @IBOutlet weak var graphView: UIView!
    
    private var chart: Chart?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func update(minCost: String, maxCost: String, averageCost: String) {
        minimumCostLabel.text = minCost
        maximumCostLabel.text = maxCost
        averageCostLabel.text = averageCost
        graphView.backgroundColor = .red
    }
    
    func chartinit() {
        let labelSettings = ChartLabelSettings(font: ExamplesDefaults.labelFont)

        let chartPoints = [(0, 0), (4, 4), (8, 11), (9, 2), (11, 10), (12, 3), (15, 18), (18, 10), (20, 15)].map{ChartPoint(x: ChartAxisValueInt($0.0, labelSettings: labelSettings), y: ChartAxisValueInt($0.1))}
        
        let xValues = chartPoints.map{$0.x}
        let yValues = ChartAxisValuesStaticGenerator.generateYAxisValuesWithChartPoints(chartPoints, minSegmentCount: 10, maxSegmentCount: 20, multiple: 2, axisValueGenerator: {ChartAxisValueDouble($0, labelSettings: labelSettings)}, addPaddingSegmentIfEdge: false)
        
        let xModel = ChartAxisModel(axisValues: xValues, axisTitleLabel: ChartAxisLabel(text: "Axis title", settings: labelSettings))
        let yModel = ChartAxisModel(axisValues: yValues, axisTitleLabel: ChartAxisLabel(text: "Axis title", settings: labelSettings.defaultVertical()))
        let chartFrame = ExamplesDefaults.chartFrame(self.graphView.bounds)
        
        let chartSettings = ExamplesDefaults.chartSettingsWithPanZoom

//        let coordsSpace = ChartCoordsSpaceLeftBottomSingleAxis(chartSettings: chartSettings, chartFrame: chartFrame, xModel: xModel, yModel: yModel)
//        let (xAxisLayer, yAxisLayer, innerFrame) = (coordsSpace.xAxisLayer, coordsSpace.yAxisLayer, coordsSpace.chartInnerFrame)
        
        let lineModel = ChartLineModel(chartPoints: chartPoints, lineColor: UIColor.purple, lineWidth: 2, animDuration: 1, animDelay: 0)
//        let chartPointsLineLayer = ChartPointsLineLayer(xAxis: xAxisLayer.axis, yAxis: yAxisLayer.axis, lineModels: [lineModel], pathGenerator: CatmullPathGenerator()) // || CubicLinePathGenerator
        
        let settings = ChartGuideLinesDottedLayerSettings(linesColor: UIColor.black, linesWidth: ExamplesDefaults.guidelinesWidth)
//        let guidelinesLayer = ChartGuideLinesDottedLayer(xAxisLayer: xAxisLayer, yAxisLayer: yAxisLayer, settings: settings)
        
        let chart = Chart(
            frame: chartFrame,
//            innerFrame: innerFrame,
            settings: chartSettings,
            layers: [
//                xAxisLayer,
//                yAxisLayer,
//                guidelinesLayer,
//                chartPointsLineLayer
            ]
        )
        
        self.graphView.addSubview(chart.view)
        self.chart = chart
        self.chart!.view.frame = CGRect(x: 0, y: 0, width: self.graphView.frame.width, height: self.graphView.frame.height)
    }
}
