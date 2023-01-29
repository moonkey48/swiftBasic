
protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
    func speak()
}
struct SomeType: ReadSpeakable {
    func read(){}
    func speak(){}
}

class SuperClass: Readable {
    func read(){ print("read")}
}
class SubClass: SuperClass, Writeable, ReadSpeakable{
    func write(){ print("write")}
    func speak(){ print("speak")}
}

let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()
var someAny: Any = sup
someAny is Readable //true
someAny is ReadSpeakable //false

someAny = sub
someAny is Readable //true
someAny is ReadSpeakable //true

someAny = sup

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
}
someAny as? Readable

if let someReadSpeakable: ReadSpeakable = someAny as? ReadSpeakable {
    someReadSpeakable.speak()
}

someAny = sub
if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
}
