class Animal {
    
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emitSound() {
        print("...")
    }
    
}

class Dog: Animal {
    func run() {
        print("the dog is running")
    }
    
}

class Bird: Animal {
    var canFly: Bool
    
    func fly() {
        if canFly {
            print("the bird is flying")
        } else {
            print("this bird can't fly")
        }
    }
    
    // Designated Initializer
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    // Convenience Initializer
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    
}

let brutus = Dog(color: "Black", gender: "M", breed: "Rottweiler")
let zeCaarioca = Bird(color: "Verde and Amarelo", gender: "M", breed: "Papagaio", canFly: true)

let maleBird = Bird(color: "Black", breed: "Sabiá")

// Para trabalhar com convenience initializer
// 1) Designated Initializer deve chamar outro designated da classe pai. Ex: super.init() ...
// 2) Um Convenience Initializer deve chamar outro initializer da mesma classe
// 3) Um Convenience Initializer deve chamar, no final, um designated initializer

brutus.emitSound()
zeCaarioca.emitSound()
