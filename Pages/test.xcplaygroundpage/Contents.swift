protocol Person {
    // 읽기 전용 프로퍼티를 요구할 경우
    var name: String { get }
    
    // 읽기와 쓰기 모두 가능하게 요구할 경우
    var age: Int { get set }
}
//@objc protocol Human {
//    var age: Int { get set }
//    @objc optional var nickname: String { get set }
//}

struct Student: Person {
    //읽기 전용으로 프로퍼티 요구를 했기 때문에 let, var 모두 사용가능
    let name: String
    //get, set 모두 가능하게 요구하기 때문에 반드시 var를 사용
    var age: Int
}

//struct Student: Person {
//    var name: String
//    var age: {
//        get {
//            return age
//        }
//        set {
//            age = newValue
//        }
//    }
//}
