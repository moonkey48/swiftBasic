class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}
 
class Bicycle: Vehicle {
    var hasBucket: Bool = false
}
var bicycle = Bicycle()
bicycle.hasBucket = true

class Car: Vehicle {
    var gear: Int = 1
    override var description: String {
        return super.description + "by gear \(gear)"
    }
}
let car = Car()
car.description

class AutomaicCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
let autoCar = AutomaicCar()
autoCar.currentSpeed = 40
autoCar.gear


