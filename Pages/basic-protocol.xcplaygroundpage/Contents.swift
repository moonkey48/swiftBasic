protocol  Cafe {
    var coffeeBeans: Int {get}
    var cafeName: String {get}
    
    func makeCoffee(shot: Int) -> Void
}
struct BasicCafe: Cafe {
    var coffeeBeans: Int
    var cafeName: String
    
    func makeCoffee(shot: Int) {
        print("☕️ have a nice day")
    }
}

var basicCafe = BasicCafe(coffeeBeans: 20, cafeName: "cafe moon")
basicCafe.makeCoffee(shot: 10)


protocol Messagable {
    var message: String? {get}
}
protocol Sendable: Messagable {
    var message: String? {get}
    func send()
}
struct Mail: Sendable {
    var message: String?
    func send(){
        print("send mail")
    }
}
struct Feedback: Sendable{
    var message: String?
    func send() {
        print("send feedback")
    }
}
var mail = Mail()
var feedback = Feedback()

struct Dog: CustomDebugStringConvertible {
    var debugDescription: String {
        return "debug success"
    }
}
var newDog = Dog()
print(newDog)


