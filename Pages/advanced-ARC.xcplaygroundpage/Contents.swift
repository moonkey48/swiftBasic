class Person {
    var name: String
    init(_ name: String){
        self.name = name
        print("person on memory")
    }
    deinit {
        print("name is automatially removed from memory")
    }
}

var ref1: Person?
var ref2: Person?
var ref3: Person?

ref1 = Person("austin")
ref2 = ref1
ref3 = ref2

ref2 = nil
ref3 = nil
ref1 = nil


//weak reference
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is being deinitialized") }
}

class Apartment {
    let unit: String
    init(unit: String) { self.unit = unit }
    weak var tenant: Person?
    deinit { print("Apartment \(unit) is being deinitialized") }
}
var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john

john = nil
unit4A = nil
