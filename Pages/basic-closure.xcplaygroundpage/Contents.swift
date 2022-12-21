func helloGenerator(message: String) -> (String, String) -> String {
    return {
        (firstName: String, lastName: String)->String in
            return lastName + firstName
    }
}
let hello = helloGenerator(message: "hi")
hello("moon", "key")

//클로저 변수처럼 사용하기
let hello1: (String, String) -> String = { $1 + $0 + "hi" }
hello1("austin", "moon")
//옵셔널, 옵셔널 체이닝
var hello2: ((String, String) -> String)?
hello2 = { $1 + $0 + "good morning"}
hello2?("문", "승의")

//파라미터로 클로저 사용하기
func manipulate(number: Int, using block: (Int) -> Int) -> Int {
    return block(number)
}
//생략1
manipulate(number: 10, using: { (number: Int) -> Int in
    return number * 2
})
//생략2
print(manipulate(number: 9, using: { $0 * 2 }))
//생략3
print(manipulate(number: 8) { $0 * 2 })


//파라미터 클로저의 활용
let numbers = [1, 3, 2, 6, 7, 5, 8, 4]

let sortedNumbers = numbers.sorted() { $0 < $1 }
print(sortedNumbers)

let evenNum = numbers.filter() { $0 % 2 == 0 }
print(evenNum)

let doubleNums = numbers.map() { $0 * 2 }
print(doubleNums) //2배

let sum = numbers.reduce(0) { $0 + $1}
print(sum)


//+ is closure too
let nums = [1,2,3,4]
let sumOfNums = nums.reduce(0) { $0 + $1 }
print(sumOfNums)
