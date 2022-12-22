var student = (name: "austin", age: 25)
print(student.name)

func introduce() -> String{
    return "hi"
}
var person = (email: "person@icloud.com", (student), introduce())
print(person.2)


//함수에서 멀티 리턴
func plusAndMinus(_ a: Int, _ b: Int) -> (Int, Int) {
    return (a-b, a+b)
}
var (minusResult, plusResult) = plusAndMinus(10, 3)
print([minusResult, plusResult])

