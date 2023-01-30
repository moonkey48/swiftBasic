

/**
 Optional Pattern
 */

var optionalValue: Int? = 100
// var optionalValue: Optional = .some(100)

//Optional의 구조
//enum Optional {
//    case .none
//    case .some(<T>)
//}

if case .some(let value) = optionalValue {
    print(value)
}

if case let value? = optionalValue {
    print(value)
}
//? 연산자의 역할이 뭔지 헷갈린다

func isItHasValue(_ optioanalValue: Int?){
    guard case .some(let value) = optionalValue else {
        print("nil")
        return
    }
    print(value)
}
isItHasValue(optionalValue)

while case .some(let value) = optionalValue {
    print(value)
    optionalValue = nil
}

let arrayOfOptionalInts: [Int?] = [nil,2,3,nil,5]
for case let numbers? in arrayOfOptionalInts {
    //numbers에 ?를 붙이지 않으면 바인딩도 안되고 nil 값도 그대로 출력된다.
    print("real number: \(numbers)")
}



/**
 Type Casting Pattern
 */
let someValue: Int =100
switch someValue {
case is String:
    print("문자열입니다.")
case let value as Int:
    print(value + 1)
default:
    print("not String nor Int")
}
