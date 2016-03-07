//: Playground - noun: a place where people can play

import UIKit

class AViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


class Building {
    var name : String
    var floors : Int
    
    init(name: String, floors: Int){
        self.name = name
        self.floors = floors
    }
    
    func info() {
        print("Name is: \(name) and has \(floors) floors.")
    }
}

class House: Building {
    var windows = 4
    
    init(name: String, floors: Int, windows: Int) {
        super.init(name: name, floors: floors)
        self.windows = windows
    }
    override func info() {
        super.info()
        print("We also have \(windows) windows.")
    }
}

let myHouse = House(name: "House", floors: 4, windows: 3)
print(myHouse.name)
print(myHouse.floors)
print(myHouse.windows)
myHouse.info()


