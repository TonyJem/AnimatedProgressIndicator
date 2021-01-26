import UIKit

class ProgressBar: UIView {
    
    var totalElements: UInt = 4
    
    var filledElements: UInt = 2
    
    var cornerRadius: CGFloat = 4
    
    var filledColor: UIColor = .white
    
    var unfilledColor: UIColor = .white
    
    var spacing: CGFloat = 4
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        render()
    }
    
    func render() {
        subviews.forEach { $0.removeFromSuperview() }
        
        let viewWidth: CGFloat = (frame.size.width - spacing * (CGFloat(totalElements) - 1 )) / CGFloat(totalElements)
        let viewHeight: CGFloat = frame.size.height
          
        var dx: CGFloat = 0
        for i in 0..<totalElements {
            let component = UIView(frame: CGRect(x: dx, y: 0, width: viewWidth, height: viewHeight))
            dx += spacing + viewWidth
            component.backgroundColor = i < filledElements ? filledColor : unfilledColor
            component.layer.cornerRadius = cornerRadius
            addSubview(component)
        }
    }
}
