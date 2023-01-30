enum DirectionPoint {
    case north, south, east, west
}

let enumCase = DirectionPoint.north

if case .north = enumCase {
    print("this is north!")
}

let string: String = "abc"

switch string {
    case _:
        print(string)
}

let optionalString: String? = "abc"
switch optionalString {
    case "abc":
        print(optionalString)
    case _:
        print("not abc")
    case nil:
        print("it's nil")
}

let moon = ("moon", 27, "male")
switch moon {
    case ("moon", _,_):
        print("hi moon")
    case (_,_,_):
        print("not moon")
}


enum MainDish {
    case pasta(taste: String)
    case pizza(dough: String, topping: String)
    case chicken(withSauce: Bool)
    case rice
}

var dishes: [MainDish] = []
var dinner: MainDish = .pasta(taste: "cream")
dishes.append(dinner)

if case .pasta(let taste) = dinner {
    print("\(taste) pasta")
}
if case let .pasta(taste) = dinner {
    print("\(taste) pasta")
}

dinner = .pizza(dough: "치즈크러스트", topping: "불고기")
dishes.append(dinner) //치즈크러스 불고기피자 dinner 변수 배열에 추가

func whatIsThis(dish: MainDish) {
    guard case .pizza(let dough, _) = dinner else {
        print("어? 피자가 아닌데?")
        return
    }
    print("\(dough) 피자")
}

whatIsThis(dish: dinner)

dinner = .chicken(withSauce: true)
dishes.append(dinner) //양념 치키 변수 배열에 추가

while case .chicken(let sauced) = dinner {
    print("\(sauced ? "양념" : "후라이드") 통닭")
    break
}

dinner = .rice
dishes.append(dinner) //쌀 열거형이 포함된 dinner변수 추가

for dish in dishes { //dishes 안에 넣은 값들 for문으로 switch로 변수 값 출력
    switch dish {
    case let .pasta(taste):
        print(taste)
    case let .pizza(dough, topping):
        print(dough, topping)
    case let .chicken(withSauce):
        print("\(withSauce ? "with sauce chicken" : "no sauce chicken")")
    case .rice:
        print("그냥 쌀")
    }
}


enum AppleDevice {
    case iPhone(model: String, storage: Int) // named tuple
    case iMac(size: Int, model: String, price: Int)
    case macBook(String, Int, Int) // unnamed tuple
}

var gift = AppleDevice.iPhone(model: "X", storage: 256)

switch gift {
case .iPhone(model: "X", storage: 256):
    print("iPhone X and 256GB")
case .iPhone(model: "X", _):
    // 와일드카드 패턴 사용 가능
    print("iPhone X")
case .iPhone:
    // 연관값 생략 가능
    print("iPhone")
case .iPhone(let model, let storage):
    // 블록 내부에서 연관값을 사용할 땐 상수로 바인딩
    // 값을 변경할 때는 var 로 변경가능
    print("iPhone \(model) and \(storage)GB")
case let .iMac(size, model, price):
    // 모든 연관값을 동일한 형태로 바인딩한다면
    // let 키워드를 열거형 케이스 앞에 표기하는 것도 가능
    print("iMac \(size), \(model), \(price)")
default:
    print("no value")
}
 

enum Transportation {
case bus(number: Int)
case taxi(company: String, number: String)
case subway(line: Int, express: Bool)
}

//switch
var commute = Transportation.bus(number: 7)
switch commute {
    case .bus(let number):
        print(number)
    case .taxi(let company, _):
        //바인딩 할 필요가 없는 연관값은 와일드 카드 패턴을 사용한다.
        print(company)
    case let .subway(line, express):
        print(line, express)
}

//if
commute = .subway(line: 2, express: false)
if case let .subway(2, express) = commute {
    if express {
        print("express subway")
    } else {
        print("basic subway")
    }
}
if case .subway(let line, false) = commute {
    print("\(line) line express")
}

let list: [Transportation] = [
    .subway(line: 2, express: false),
    .bus(number: 4412),
    .subway(line: 7, express: true),
    .taxi(company: "Kakao", number: "1234")
]

//subway
for case let .subway(n, _) in list {
    print("subway \(n)")
}

//express subway
for case let .subway(lineNum, true) in list {
    print("express subway is line \(lineNum)")
}

//where 활용
for case let .subway(n,_) in list where n == 2 {
    print("subway \(n)")
}
