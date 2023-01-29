protocol Student {
    var height: Double {get set}
    var name: String {get}
    static var schoolNumber: Int {get set}
}
class Aiden: Student {
    var roundingHeight: Double = 0.0
    var height: Double {
        get {
            return roundingHeight
        }
        set {
            roundingHeight = newValue
        }
    }
    var name: String = "Aiden"
    static var schoolNumber: Int = 20112330
}

let aiden = Aiden()
print(aiden.height, aiden.name, Aiden.schoolNumber)
aiden.height = 170.0
print(aiden.height, aiden.name, Aiden.schoolNumber)


protocol SomeProtocol {
    init()
}

class SomeSuperClass {
    init(){}
}
class SomeSubClass: SomeSuperClass, SomeProtocol {
    required override init(){
        
    }
}
