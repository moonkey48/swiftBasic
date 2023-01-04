struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let structInst1 = ValueType()

var structInst2 = structInst1

structInst2.property = 2
//reference type이 아닌 value type이기 떄문에 다른 값이 배정된다.
print("sturctInst1 property = \(structInst1.property)")
print("sturctInst2 property = \(structInst2.property)")

let classInst1 = ReferenceType()

let classInst2 = classInst1
classInst2.property = 2
//같은 값이 나온다. 주소 값을 복사했기 때문에!
print("classInst1 property = \(classInst1.property)")
print("classInst2 property = \(classInst2.property)")


class Dog {
    var name: String?
    var age: Int?
    
    func simpleDescription() -> String {
        if let name = self.name {
            return "dog \(name)"
        } else {
            return "No dog name"
        }
    }
}
struct Coffee {
    var name: String?
    var size: String?
    
    func simpleDescription() -> String {
        if let name = self.name {
            return "coffee \(name)"
        } else {
            return "no coffee name"
        }
    }
}

var myDog = Dog()

myDog.age = 3
print(myDog.simpleDescription())

var coffee = Coffee()
coffee.name = "아아"
coffee.size = "tall"

print(coffee.simpleDescription())

class Person {
    var name: String
    init(name: String){
        self.name = name
    }
    func printName(){
        print("\(name) is my name")
    }
}
class Student: Person {
    init(studentName: String){
        super.init(name: studentName)
    }
    func goToSchool(){
        print("go to school")
    }
}
var moon: Student = Student(studentName: "austin")
moon.goToSchool()
moon.printName()
