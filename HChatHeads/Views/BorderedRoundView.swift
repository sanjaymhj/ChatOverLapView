import UIKit

class BorderedRoundView: UIView {
    
    private var imageView: RoundImageView?
    private var borderWidth: CGFloat?
    private var borderColor: CGColor?
    
    convenience init(frame: CGRect, image: UIImage, borderWidth: Float, borderColor: UIColor) {
        let viewFrame = CGRect(x: CGRectGetMinX(frame), y: CGRectGetMinY(frame), width: frame.width, height: frame.height)
        self.init(frame: viewFrame)
        
        self.borderWidth = CGFloat(borderWidth)
        self.borderColor = borderColor.CGColor
        self.backgroundColor = borderColor

        initImageView(image)
    }

    func initImageView(image: UIImage) {
        self.imageView = RoundImageView(frame: CGRect.zero)
        self.imageView?.backgroundColor = UIColor.clearColor()
        self.imageView!.image = image
        self.imageView!.clipsToBounds = true
        self.imageView!.contentMode = .ScaleAspectFill
        self.addSubview(self.imageView!)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        changeToSquareShape()
        createRoundBorder()
         let imageViewFrame = CGRect(x: CGRectGetMinX(self.bounds) + CGFloat(self.borderWidth!), y: CGRectGetMinY(self.bounds) + CGFloat(self.borderWidth!), width: self.frame.width - 2 * CGFloat(self.borderWidth!), height: self.frame.height - 2 * CGFloat(self.borderWidth!))
        self.imageView?.frame = imageViewFrame
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        changeToSquareShape()
        createRoundBorder()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        changeToSquareShape()
        createRoundBorder()
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
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.width / 2
    }
}
