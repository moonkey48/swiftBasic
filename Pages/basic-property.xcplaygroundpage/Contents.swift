struct Hex {
    var decimal: Int?
    var hexString: String? {
        get {
            if let decimal = self.decimal {
                return String(decimal, radix: 16)
            } else {
                return nil
            }
        }
        set {
            if let newValue = newValue {
                self.decimal = Int(newValue, radix: 16)
            } else {
                self.decimal = nil
            }
        }
//        willSet {
//            print("\(self.decimal) will change to \(newValue)")
//        }
//        didSet {
//            print("\(oldValue) changed to \(self.decimal)")
//        }
    }
}

var hex = Hex()
hex.decimal = 10
hex.hexString

hex.hexString = "b"
hex.decimal

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
                origin.x = newCenter.x - (size.width / 2)
                origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y:0.0), size: Size(width: 10.0, height:10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y:15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")


class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("totalStep will set to \(newValue)")
        }
        didSet {
            print("Added \(totalSteps - oldValue)")
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 890
