//map
let numbers: [Int] = [0,1,2,3,4]
var doubleNumbers: [Int] = [Int]()
var strings: [String] = [String]()

for number in numbers {
    doubleNumbers.append(number * 2)
    strings.append("\(number)")
}
print(doubleNumbers)
print(strings)

doubleNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})
doubleNumbers

strings = numbers.map({ (number: Int) -> String in
    return "\(number)"
})
strings

doubleNumbers = numbers.map { $0 * 2 }
doubleNumbers
strings = numbers.map {"\($0)"}
strings


//filter
var filtered: [Int] = [Int]()
for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}
filtered

filtered = numbers.filter { $0 % 2 == 0 }
filtered


//reduce
let someNumbers: [Int] = [2,8,15]

var result: Int = 0

//before reduce use
for number in someNumbers {
    result += number
}
result
//after reduce use
result = someNumbers.reduce(0, { (sum: Int, number: Int) -> Int in
    return sum + number
})
result

//후행 클로저, 반환키워드, 반환타입, 매개변수 타입 생략
result = someNumbers.reduce(10) {$0 + $1}
result
