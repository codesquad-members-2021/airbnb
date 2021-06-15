//
//  PriceGraphView.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit

class PriceGraphView: UIView {
    
    
    private let graphPath = UIBezierPath()
    private let zeroPath = UIBezierPath()
    private var graphLayer : CAShapeLayer = {
       let layer = CAShapeLayer()
        layer.fillColor = nil
        layer.strokeColor = UIColor.black.cgColor
        layer.lineWidth = 2
        return layer
    }()
    
    private var priceCountInRange : PriceInfo?
    private var widthOffset : CGFloat = 0
    
    init(frame: CGRect, prices: PriceInfo){
        self.priceCountInRange = prices
        super.init(frame: frame)
        self.widthOffset = self.frame.width / CGFloat(prices.prices.count)
    }
    
    override init(frame: CGRect) {
        self.priceCountInRange = nil
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.priceCountInRange = nil
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        var currentX: CGFloat = 0
        let startPoint = CGPoint(x: currentX, y: self.frame.height)
        
        guard let ranges = priceCountInRange?.prices else { return }
        if ranges.isEmpty { return }
        
        self.graphPath.move(to: startPoint)
        self.zeroPath.move(to: startPoint)
        
        let sortedKeys = ranges.keys.map{Int($0)!}.sorted()
        let maxValue : Int = ranges.values.max() ?? 1
        
        sortedKeys.forEach { key in
            let value = ranges[String(key)]!
            currentX += widthOffset
            let currentY = self.frame.height - CGFloat(value/maxValue) * 90
            let newPosition = CGPoint(x: currentX, y: currentY)
            self.graphPath.addLine(to: newPosition)
            self.zeroPath.addLine(to: CGPoint(x: currentX, y: self.frame.height))
        }
        
        chartAnimation()
        
        self.layer.addSublayer(graphLayer)
    }
    
    func chartAnimation(){
        let oldPath = self.zeroPath.cgPath
        let newPath = self.graphPath.cgPath
        
        let animation = CABasicAnimation(keyPath: "path")
        animation.duration = 0.5
        animation.fromValue = oldPath
        animation.toValue = newPath
        self.graphLayer.add(animation, forKey: "path")
        graphLayer.path = newPath
    }
}
