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
    
    private func render() {
        let viewWidth: CGFloat = (frame.size.width - spacing * (CGFloat(totalElements) - 1 )) / CGFloat(totalElements)
        let viewHeight: CGFloat = frame.size.height
        
        for i in 0..<totalElements {
            
        }
        
        
    }
}
