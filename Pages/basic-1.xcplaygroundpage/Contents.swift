var isDarkenModeOn : Bool = true
if isDarkenModeOn {
    print("dark mode on")
}
if !isDarkenModeOn {
    print("darke mode off")
}

var arr : Array<Int> = [0,1,2,3,4,5]

for item in arr {
    print("item \(item)")
}

enum School {
    case elementary, middle, high
}

let mySchool = School.elementary
print("mySchool is \(myShool)")

enum Grade: Int {
    case first = 1
    case second = 2
}
let myGrade = Grade.second

enum ShoolDetail {
    case elementary(name:String)
    case middle(name:String)

    func get() -> String {
        switch self {
            case .elementary(let name):
                return name
            case .middle(let name):
                return name
        }
    }
}
let myMiddleSchoolName = SchoolDetail.middle(name: 'jeju school')
print("middleSchool is \(myMiddleShoolName.get())")