
var name: String = "austin"
switch name {
    case "moonkey":
        print("hello moonkey")
    case "austin":
        print("hello austin")
    default:
        print("who are you?")
}
if name == "austin" {
    print("hi austin")
}
    
let num: Int = 10
switch num {
case 0:
    print("0")
case 1...100:
    print("1-100")
case 100...Int.max:
    print("over 100")
default:
    print("what")
}
