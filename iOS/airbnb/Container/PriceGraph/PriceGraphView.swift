//
//  PriceGraphView.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit

class PriceGraphView: UIView {
    
    private let graphLayer = CAShapeLayer()
    private let graphPath = UIBezierPath()
    private let zeroPath = UIBezierPath()
    
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
        
        guard let ranges = priceCountInRange else { return }
        if ranges.prices.isEmpty { return }
        
        self.graphPath.move(to: startPoint)
        self.zeroPath.move(to: startPoint)
        for price in ranges.prices {
            currentX += widthOffset
            let newPosition = CGPoint(x: currentX,
                                      y: self.frame.height - (CGFloat(price.value) / self.frame.height) * 100)
            self.graphPath.addLine(to: newPosition)
            self.zeroPath.addLine(to: CGPoint(x: currentX, y: self.frame.height))
        }
        
        graphLayer.fillColor = nil
        graphLayer.strokeColor = UIColor.black.cgColor
        graphLayer.lineWidth = 2
        
        chartAnimation()
        
        self.layer.addSublayer(graphLayer)
    }
    
    func chartAnimation(){
        let oldPath = self.zeroPath.cgPath
        let newPath = self.graphPath.cgPath
        
        let animation = CABasicAnimation(keyPath: "path")
        animation.duration = 0.8
        animation.fromValue = oldPath
        animation.toValue = newPath
        self.graphLayer.add(animation, forKey: "path")
        graphLayer.path = newPath
    }
}
