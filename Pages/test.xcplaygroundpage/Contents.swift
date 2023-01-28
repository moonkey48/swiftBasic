protocol PersonP {
    var name: String { get }
}
protocol StudentP: PersonP {
    var major: String { get }
    func study()
}
struct Student: StudentP {
    var name: String = ""
    var major: String = ""
    func study(){
        print("study hard")
    }
}

var austin: Student = Student()
if austin is PersonP {
    print("austin is person")
}
