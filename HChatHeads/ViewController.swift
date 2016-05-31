//
//  ViewController.swift
//  HChatHeads
//
//  Created by Sanjay Maharjan on 5/30/16.
//  Copyright © 2016 Sanjay Maharjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var receiverView: ReceiversView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let people = generatePeople(4)
        self.receiverView = ReceiversView(frame: CGRect(x: 10, y: 20, width: 200, height: 100), person: people, borderWidth: 12, borderColor: UIColor.whiteColor())
        self.view.addSubview(receiverView!)
    }
    
    func generatePeople(number: Int) -> [Person] {
        var people: [Person] = []
        
        let person1 = Person(name: "The Hope Once", image: UIImage(named: "b")!)
        let person2 = Person(name: "Neutral Machine", image: UIImage(named: "c")!)
        let person3 = Person(name: "Bored to death", image: UIImage(named: "a")!)//treated as this is the current user
        let person4 = Person(name: "The Dumb One", image: UIImage(named: "a")!)
        let person5 = Person(name: "The Glad Shit", image: UIImage(named: "a")!)
        let person6 = Person(name: "Make Last", image: UIImage(named: "c")!)
        
        people.append(person1)
        people.append(person2)
        people.append(person3)
        people.append(person4)
        people.append(person5)
        people.append(person6)
        
        
        var resultPeople: [Person] = []
        for index in 0..<number {
            resultPeople.append(people[index])
        }
        return resultPeople
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

