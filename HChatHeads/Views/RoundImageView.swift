
import UIKit

protocol RoundImageDelegate {
}

class RoundImageView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        changeToSquareShape()
        createRoundBorder()
    }
    var delegate: RoundImageDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        changeToSquareShape()
        createRoundBorder()
    }
    
    convenience init(type buttonType: UIButtonType) {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        changeToSquareShape()
        createRoundBorder()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func changeToSquareShape() {
        self.frame = squareShape(fromFrame: self.frame)
    }
       
    func squareShape(fromFrame rect: CGRect) -> CGRect {
        let minDimension = min(rect.size.height, rect.size.width)
        var newRect = rect
        newRect.size.width = minDimension
        newRect.size.height = minDimension
        return newRect
    }
    
    func createRoundBorder() {
        changeCornerRadius(toValue: self.frame.size.width / 2)
    }
    
    func changeCornerRadius(toValue radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
}
