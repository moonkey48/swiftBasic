class Student {
    var name: String = "unknown"
    
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("student type.")
    }
    func selfIntroduce() {
        print("\(self.class) classroom \(name).")
    }
}

Student.selfIntroduce()

var austin: Student = Student()
austin.name = "austin"
austin.class = "Swift Basic"
austin.selfIntroduce()

