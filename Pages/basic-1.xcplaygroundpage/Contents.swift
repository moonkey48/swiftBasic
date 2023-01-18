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
print("mySchool is \(mySchool)")

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


for i in 0...5 {
    print("print \(i)")
}

for i in 0..<5 {
    print("print \(i)")
}

for i in 0..<5 where i % 2 === 0 {
    print("print \(i)")
}

var randomInts: [Int] = []
//i가 사용되지 않는 경우 _ 언더바로 사용한다.
for _ in 0..<25{
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
print("randomInts: \(randomInts)")

