func func1(a:Int, b:Int) -> Int {
    return a + b
}
print(func1(a:1, b:3))

func func2(a: Int = 1, b: Int = 2) {
    print(a + b)
}
func2(a:4)

func sendMoney(friends: String...) {
    print("I send money to \(friends)")
}

var sendMoneyInst: (String...) -> Void = sendMoney(friends:)
sendMoneyInst("austin", "hi")



func sugarGenerator() -> () -> String {
    func basicSugar() -> String{
        return "basic sugar"
    }
    return basicSugar
}
let basicSugar = sugarGenerator()
basicSugar()


func greeting(to friend: String,from me: String){
    print("Hello \(friend), I'm \(me)")
}

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "austin")

func thunk(callback: (String, String)->Void){
    callback("jenny", "mike")
}
thunk(callback: greeting)
