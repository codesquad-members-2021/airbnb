//
//  DayRangeIndicatorView.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/21.
//

import UIKit
import HorizonCalendar

final class DayRangeIndicatorView: UIView {
    
    private let indicatorColor: UIColor
    
    init() {
        self.indicatorColor = UIColor.blue.withAlphaComponent(0.3)
        super.init(frame: CGRect())
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var framesOfDaysToHighlight = [CGRect]() {
        didSet {
            guard framesOfDaysToHighlight != oldValue else { return }
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(indicatorColor.cgColor)
        
        // Get frames of day rows in the range
        var dayRowFrames = [CGRect]()
        var currentDayRowMinY: CGFloat?
        for dayFrame in framesOfDaysToHighlight {
            if dayFrame.minY != currentDayRowMinY {
                currentDayRowMinY = dayFrame.minY
                dayRowFrames.append(dayFrame)
            } else {
                let lastIndex = dayRowFrames.count - 1
                dayRowFrames[lastIndex] = dayRowFrames[lastIndex].union(dayFrame)
            }
        }
        
        // Draw rounded rectangles for each day row
        for dayRowFrame in dayRowFrames {
            let roundedRectanglePath = UIBezierPath(roundedRect: dayRowFrame, cornerRadius: 12)
            context?.addPath(roundedRectanglePath.cgPath)
            context?.fillPath()
        }
    }
    
}

extension DayRangeIndicatorView: CalendarItemViewRepresentable {
    struct InvariantViewProperties: Hashable {
        let indicatorColor = UIColor.blue.withAlphaComponent(0.15)
    }
    
    struct ViewModel: Equatable {
        let framesOfDaysToHighlight: [CGRect]
    }
    
    static func makeView(withInvariantViewProperties invariantViewProperties: InvariantViewProperties) -> DayRangeIndicatorView {
        DayRangeIndicatorView()
    }
    
    static func setViewModel(_ viewModel: ViewModel, on view: DayRangeIndicatorView) {
        view.framesOfDaysToHighlight = viewModel.framesOfDaysToHighlight
    }
    
}
