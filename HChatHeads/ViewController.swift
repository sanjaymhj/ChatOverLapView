import UIKit

class ViewController: UIViewController {
    
    var receiverView: OverLapChatHeadView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let people = generatePeople(4)
        self.receiverView = OverLapChatHeadView(frame: CGRect(x: 20, y: 40, width: 300, height: 150),
                                          person: people,
                                          borderWidth: 12,
                                          borderColor: UIColor.whiteColor())
        self.view.addSubview(receiverView!)
    }
    
    func generatePeople(number: Int) -> [Person] {
        var people: [Person] = []
        
        let person1 = Person(name: "The Hope Once", image: UIImage(named: "a")!)
        let person2 = Person(name: "Neutral Machine", image: UIImage(named: "c")!)
        let person3 = Person(name: "Bored to death", image: UIImage(named: "d")!)
        let person4 = Person(name: "The Dumb One", image: UIImage(named: "b")!)
        
        people.append(person1)
        people.append(person2)
        people.append(person3)
        people.append(person4)
        
        var resultPeople: [Person] = []
        for index in 0..<number {
            resultPeople.append(people[index])
        }
        return resultPeople
    }

}
