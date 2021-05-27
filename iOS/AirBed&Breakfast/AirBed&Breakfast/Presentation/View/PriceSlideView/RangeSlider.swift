//
//  RangeSlider.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/24.
//

import UIKit

class RangeSlider: UIControl {
    
    var minimumValue: CGFloat = 0.0
    var maximumValue: CGFloat = 1.0
    var lowerValue: CGFloat = 0.2
    var upperValue: CGFloat = 0.8
    
    var thumbImage = UIImage(systemName: "circle.fill")!
    
    private let trackLayer = CALayer()
    private let lowerThumbImageView = UIImageView()
    private let upperThumbImageView = UIImageView()
    private var previousLocation = CGPoint()
    
    override var frame: CGRect {
        didSet {
            updateLayerFrames()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        trackLayer.backgroundColor = UIColor.yellow.cgColor
        layer.addSublayer(trackLayer)
        
        lowerThumbImageView.image = thumbImage
        addSubview(lowerThumbImageView)
        
        upperThumbImageView.image = thumbImage
        addSubview(upperThumbImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        updateLayerFrames()
    }
    
    private func updateLayerFrames() {
        trackLayer.frame = CGRect(x: 0, y: self.frame.height - 10, width: self.frame.width, height: 3)
        trackLayer.setNeedsDisplay()
        
        lowerThumbImageView.frame = CGRect(origin: thumbOriginForValue(lowerValue),
                                           size: thumbImage.size)
        upperThumbImageView.frame = CGRect(origin: thumbOriginForValue(upperValue),
                                           size: thumbImage.size)
    }
    
    private func positionForValue(_ value: CGFloat) -> CGFloat {
        return frame.width * value
    }
    
    private func thumbOriginForValue(_ value: CGFloat) -> CGPoint {
        let xPosition = positionForValue(value) - thumbImage.size.width / 2.0
        let yPosition = ((self.frame.height - 10) - (thumbImage.size.height) / 2.0)
        return CGPoint(x: xPosition, y: yPosition)
    }
    
    public func clear() {
        self.lowerValue = 0.2
        self.upperValue = 0.8
        self.updateLayerFrames()
    }
    
}

extension RangeSlider {
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        previousLocation = touch.location(in: self)
        
        if lowerThumbImageView.frame.contains(previousLocation) {
            lowerThumbImageView.isHighlighted = true
        } else if upperThumbImageView.frame.contains(previousLocation) {
            upperThumbImageView.isHighlighted = true
        }
        
        return lowerThumbImageView.isHighlighted || upperThumbImageView.isHighlighted
    }
    
    override func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        let location = touch.location(in: self)
        
        let deltaLocation = location.x - previousLocation.x
        let deltaValue = (maximumValue - minimumValue) * deltaLocation / bounds.width
        
        previousLocation = location
        
        if lowerThumbImageView.isHighlighted {
            lowerValue += deltaValue
            lowerValue = boundValue(lowerValue, toLowerValue: minimumValue,
                                    upperValue: upperValue)
        } else if upperThumbImageView.isHighlighted {
            upperValue += deltaValue
            upperValue = boundValue(upperValue, toLowerValue: lowerValue,
                                    upperValue: maximumValue)
        }
        
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        updateLayerFrames()
        
        CATransaction.commit()
        
        sendActions(for: .valueChanged)
        return true
    }
    
    private func boundValue(_ value: CGFloat, toLowerValue lowerValue: CGFloat,
                            upperValue: CGFloat) -> CGFloat {
        return min(max(value, lowerValue), upperValue)
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        lowerThumbImageView.isHighlighted = false
        upperThumbImageView.isHighlighted = false
    }
    
}
