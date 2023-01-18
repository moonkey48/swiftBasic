let b = 10
var a = 5
a = 10

//튜플 할당
let (x,y) = (a,b)
print(x)

let three = 3
let minusThree = -three

a += 2

if a == 12 {
    print("hello world")
}

//튜플 비교
//해당 값을 비교할 수 있는 경우에만 비교를 수행한다.
(1,"zebra") < (2, "apple")  //1보다 2가 작기 때문에
(3,"apple") < (3, "bird")   //apple이 bird보다 작기 때문
(4,"dog") == (4,"dog")

//삼항 연산자
let apple = true
let fruit = apple ? "apple" : "banana"

/*
 Nil 병합 연산자
 nil 병합 연산자는 a ?? b 형태를 갖는 연산자이다. 옵셔널 a를 unwrap해서 a가 nil인 경우 b를 반환한다.
 => a != nil ? a! : b
 */

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName
userDefinedColorName = "green"
var newColorName = userDefinedColorName ?? defaultColorName


/**
 범위 연산자(Range Operators)
 
 닫힌 범위 연산자
 (a...b)의 형태로 범위의 시작과 끝이 있는 연산자이다.
 
 반닫힌 범위 연산자
 (a..<b)의 형태로 a부터 b보다 작을 때까지의 범위를 갖는다.
 배열을 다루는데 유용하다.
 
 단방향 범위
 [a...] [...a]의 형태로 범위의 시작 혹은 끝만 지정해 사용하는 범위 연산자
 */
for index in 1...5{
    print("\(index)")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i+1) is called \(names[i])")
}

for name in names[2...] {
    print(name)
}
for name in names[...2] {
    print(name)
}
for name in names[..<2]{
    print(name)
}

let range = ...5
range.contains(7)


/**
 논리 연산자
 
 논리 부정 !a
 논리 곱 a && b
 논리 합 a || b
 
 두개 이상의 논리 연산자를 조합해서 사용할 수 있고 왼쪽의 표현을 우선해서 논리 계산을 한다.
 또는 명시적 괄호 () 를 사용해서 우선 순위를 지정할 수 있다.
 */
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}

let enterDoorCode = true
let passedRetinaScan = true
if (enterDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}
