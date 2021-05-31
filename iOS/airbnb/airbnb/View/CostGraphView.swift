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
    let rangeSlider = RangeSlider(frame: .zero)
    
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
    }
    
    func chartInit(data: [(Int, Int)]) {
        let labelSettings = ChartLabelSettings(font: ExamplesDefaults.labelFont)

        let chartPoints = data.map{ChartPoint(x: ChartAxisValueInt($0.0, labelSettings: labelSettings), y: ChartAxisValueInt($0.1))}
        
        let xValues = chartPoints.map{$0.x}
        let yValues = ChartAxisValuesStaticGenerator.generateYAxisValuesWithChartPoints(chartPoints, minSegmentCount: 1, maxSegmentCount: 2, multiple: 2, axisValueGenerator: {ChartAxisValueDouble($0, labelSettings: labelSettings)}, addPaddingSegmentIfEdge: true)
        
        let xModel = ChartAxisModel(axisValues: xValues, axisTitleLabel: ChartAxisLabel(text: "Axis title", settings: labelSettings))
        let yModel = ChartAxisModel(axisValues: yValues, axisTitleLabel: ChartAxisLabel(text: "Axis title", settings: labelSettings.defaultVertical()))
        let chartFrame = ExamplesDefaults.chartFrame(self.graphView.bounds)
        
        let chartSettings = ExamplesDefaults.chartSettingsWithPanZoom

        let coordsSpace = ChartCoordsSpaceLeftBottomSingleAxis(chartSettings: chartSettings, chartFrame: chartFrame, xModel: xModel, yModel: yModel)
        let (xAxisLayer, yAxisLayer, innerFrame) = (coordsSpace.xAxisLayer, coordsSpace.yAxisLayer, coordsSpace.chartInnerFrame)
        
        let lineModel = ChartLineModel(chartPoints: chartPoints, lineColor: UIColor.black, lineWidth: 2, animDuration: 1, animDelay: 0)
        
        let settings = ChartGuideLinesDottedLayerSettings(linesColor: UIColor.clear, linesWidth: ExamplesDefaults.guidelinesWidth)
        let _ = ChartGuideLinesDottedLayer(xAxisLayer: xAxisLayer, yAxisLayer: yAxisLayer, settings: settings)
        
        let chartPointsLineLayer = ChartPointsAreaLayer(xAxis: xAxisLayer.axis, yAxis: yAxisLayer.axis, chartPoints: chartPoints, areaColors: [UIColor(cgColor: UIColor.black.cgColor).withAlphaComponent(1), UIColor.black], animDuration: 0, animDelay: 0, addContainerPoints: false, pathGenerator: CatmullPathGenerator())
        
        let chart = Chart(
            frame: chartFrame,
            innerFrame: innerFrame,
            settings: chartSettings,
            layers: [
                chartPointsLineLayer,
            ]
        )
        rangeSliderInit()
        self.graphView.addSubview(chart.view)
        self.chart = chart
    }
    
    func rangeSliderInit() {
        let margin: CGFloat = 20
        let height: CGFloat = 10
        let width = self.bounds.width - 2 * margin
        
        rangeSlider.frame = CGRect(x: margin, y: graphView.frame.maxY, width: width, height: height)
        
        self.addSubview(rangeSlider)
    }
}
