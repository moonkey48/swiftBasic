func func1(a:Int, b:Int) -> Int {
    return a + b
}
print(func1(a:1, b:3))

func func2(a: Int = 1, b: Int = 2) {
    print(a + b)
}
func2(a:4)

func helloFriends(friends: String...) {
    print("hello \(friends)")
}
helloFriends(friends: "austin", "moonkey", "lizzy")





