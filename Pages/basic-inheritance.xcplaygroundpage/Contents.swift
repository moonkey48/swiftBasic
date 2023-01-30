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

