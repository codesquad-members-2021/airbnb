import UIKit

final class GraphView: UIView {
    
    var values:[CGFloat] = []
    
    private lazy var minLayer: CALayer = {
        let layer = CALayer()
        layer.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        layer.backgroundColor = UIColor.red.cgColor
        layer.compositingFilter = "differenceBlendMode"
        return layer
    }()
    
    init(frame: CGRect, values:[CGFloat]) {
        super.init(frame: frame)
        self.values = values
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let graphLayer = CAShapeLayer()
        let graphPath = UIBezierPath()
        let xOffset:CGFloat = self.frame.width/CGFloat(values.count)
        var currentX:CGFloat = 0
        graphPath.move(to: CGPoint(x: currentX, y: 0))
        
        for i in 0..<values.count {
            currentX += xOffset
            let newPosition = CGPoint(x: currentX, y: self.frame.height - self.values[i]/10000)
            graphPath.addLine(to: newPosition)
        }
        
        graphPath.addLine(to: CGPoint(x: frame.width, y: frame.height))
        graphPath.addLine(to: CGPoint(x: 0, y: frame.height))
        graphPath.addLine(to: CGPoint(x: 0, y: 0))
        graphLayer.fillColor = UIColor.black.cgColor
        graphLayer.strokeColor = UIColor.black.cgColor
        graphLayer.lineWidth = 2
        graphLayer.path = graphPath.cgPath
        self.layer.addSublayer(graphLayer)
    }
    
}
