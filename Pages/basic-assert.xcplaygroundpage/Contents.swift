var someInt: Int = 0
assert(someInt == 0)
someInt = 1
print(someInt)

func functionWithAssert(age: Int?){
    assert(age != nil, "age == nil")
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다.")
    print("당신의 나이는 \(age!)입니다.")
}
functionWithAssert(age: 50)

func functionWithGuard(age: Int?){
    guard let unwrappedAge = age,
          unwrappedAge < 130,
          unwrappedAge >= 0 else {
        print("wrong age input")
        return
    }
    print("your age is \(unwrappedAge)")
}
functionWithGuard(age: 20)
functionWithGuard(age: -1)

func someFunction(info: [String: Any]){
    guard let name = info["name"] as? String else {
        return
    }
    guard let age = info["age"] as? Int, age >= 0 else{
        return
    }
    print("\(name):\(age)")
}
someFunction(info: ["name":"jenny", "age":"10"])
someFunction(info: ["name":"jenny", "age":10])
