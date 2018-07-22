// Class

class Person {
    
    var name: String
    var gender: Character
    var age: Int = 0
    
    init(name: String, gender: Character) {
        self.name = name
        self.gender = gender
    }
    
    func speak(sentence: String) {
        print(sentence)
    }
    
    func introduce() {
        speak(sentence: "Hi, my name is \(name)")
    }
    
}

class Job {
    var title: String
    var sallary: Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}

let rubens = Person(name: "Rubens", gender: "M")
rubens.introduce()


class Vehicle {
    
    var speed: Double = 0.0 {
        didSet {
            speed = min(speed, maxSpeed)
        }
    }
    
    var model: String
    static let speedUnit: String = "Km/h"
    
    // computed variable
    var maxSpeed: Double {
        return 350
    }
    // computed variable
    var speedInMilesPerHour: Double {
        get {
            return speed / 160934
        }
        set {
            speed = newValue * 160934
        }
    }
    
    init(model: String) {
        self.model = model
    }
    
    // instance method
    func descript() -> String {
        return "Vehicle: \(model), current speed: \(speed)"
    }
    
    // class method
    class func alert() -> String {
        return "If you drink do not drive!"
    }
}

print(Vehicle.alert())
print(Vehicle.speedUnit)


let car = Vehicle.init(model: "Ferrari")
car.speed = 500
print(car.speed)


