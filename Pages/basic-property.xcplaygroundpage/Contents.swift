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


