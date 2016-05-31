import UIKit

class OverLapChatHeadView: UIView {
    
    private var borderWidth: Float?
    private var borderColor: UIColor?
    
    convenience init(frame: CGRect, person people: [Person], borderWidth: Float, borderColor: UIColor) {
        self.init(frame: frame)
        
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        
        self.commonInit(people)
    }
    
    private func commonInit(people: [Person]) {
        let minFrameSize = min(self.frame.width, self.frame.height)
        var i = 0
        for person in people {
            guard i <= 2 else {// to populate only first 3 person in the view 
                return
            }
            
            let frame = CGRect(x: (minFrameSize * CGFloat(i)) / 2,
                               y: 0,
                               width: self.frame.width,
                               height: self.frame.height)
            let roundImage = BorderedRoundView(frame: frame, image: person.image, borderWidth: self.borderWidth!, borderColor: self.borderColor!)
            self.addSubview(roundImage)
            i += 1
        }
    }
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
