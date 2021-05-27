//
//  PriceSliderLayer.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/27.
//

import UIKit

class RangeSliderTrackLayer: CALayer {
    weak var rangeSlider: priceSlider?
    
    // 더미 그래프 데이터
    let values: [CGFloat] = [1,1,1,1,5,6,50,40,70,30,15,32,10,1,1,1,1,1,1]
    
    override func draw(in ctx: CGContext) {
        guard let slider = rangeSlider else {
            return
        }
        
        let lowerValuePosition = slider.positionForValue(slider.lowerValue)
        let upperValuePosition = slider.positionForValue(slider.upperValue)
        
        let graphPath =  UIBezierPath()
        let rangeGraphPath =  UIBezierPath()
        let xOffset: CGFloat = self.bounds.width / CGFloat(values.count)
        
        var currentX: CGFloat = 0
        let startPosition = CGPoint(x: currentX, y: self.frame.height)
        
        graphPath.move(to: startPosition)
        rangeGraphPath.move(to: CGPoint(x: lowerValuePosition, y: self.frame.height))
        
        values.forEach { (value) in
            currentX += xOffset
            let newPosition = CGPoint(x: currentX,
                                      y: (self.frame.height)  - value)
            
            graphPath.addLine(to: newPosition)
            if lowerValuePosition <= currentX && upperValuePosition >= currentX {
                rangeGraphPath.addLine(to: newPosition)
            }
        }
        
        rangeGraphPath.addLine(to: CGPoint(x: upperValuePosition,
                                           y: self.frame.height))
        
        graphPath.lineCapStyle = .round
        graphPath.lineJoinStyle = .round
        graphPath.lineWidth = 1
        ctx.addPath(graphPath.cgPath)
        ctx.setFillColor(UIColor.darkGray.cgColor)
        ctx.fillPath()
        
        rangeGraphPath.lineCapStyle = .round
        rangeGraphPath.lineJoinStyle = .round
        rangeGraphPath.lineWidth = 1
        
        ctx.addPath(rangeGraphPath.cgPath)
        ctx.setFillColor(UIColor.black.cgColor)
        ctx.fillPath()
    }
}
