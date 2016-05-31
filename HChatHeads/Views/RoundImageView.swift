import UIKit

class RoundImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        changeToSquareShape()
        createRoundBorder()
    }
    
    private func changeToSquareShape() {
        self.frame = squareShape(fromFrame: self.frame)
    }
       
    private func squareShape(fromFrame rect: CGRect) -> CGRect {
        let minDimension = min(rect.size.height, rect.size.width)
        var newRect = rect
        newRect.size.width = minDimension
        newRect.size.height = minDimension
        return newRect
    }
    
    private func createRoundBorder() {
        self.layer.cornerRadius = self.frame.size.width / 2
    }
    
}
