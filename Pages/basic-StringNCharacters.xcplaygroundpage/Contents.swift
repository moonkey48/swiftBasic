/**
 무조건 "" 사용
 
 여러줄을 표현하고 싶으면 """로 사용
 
 줄바꿈을 무시하고 싶은 경우 \ 백슬러시 사용
 
 들여쓰기는 마지막 """의 위치를 기준으로 적용

 */

let quotation = """

    The White Rabbit put on his spectacles.  "Where shall I begin,
    please your Majesty?" he asked.
        "Begin at the beginning," the King said gravely, "and go on
    till you come to the end; then stop."

"""

print(quotation)


/**
 문자열 리터럴의 특수문자
 \0, \...\"",\' 등의 특수문자를 포함할 수 있다.
 */
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowlege" - Einstein
let dollaSign = "\u{24}"            // $, 유니코트 U+0024
let blackHeart = "\u{2665}"         // ♥, 유니코드 U+2665
let sparklingHeart = "\u{1F496}" // 💖,유니코드 U+1F496

/**
 빈 문자열 초기화
 
문자열이 비어있는지 확인할 때는 isEmpty를 사용
 */
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("String is empty")
}


/**
 Swift에서의 String은 값 타입이어서 복사를 할 때 레퍼런스를 할당하는 것이 아니라 값을 할당한다.
 문자열의 개별 문자를 for in을 통해 접근할 수 있다.
 */

for character in "Dog!🐶" {
    print(character)
}

/**
 문자
 
 문자 상수 선언
 
 문자 배열을 통해 초기화를 할 수도 있다.
 
 +=을 통해 문자열을 붙일수도 있고 append를 통해 문자열을 붙일 수 도 있다.
 
 \ 백슬러시를 통해 문자열 안에 변수를 넣을 수 있다.
 */
let mark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString: String = String(catCharacters)
print(catString)


var string1 = "hello"
string1 += "world"
string1.append("!")
print(string1)

/**
 count 프로퍼티를 통해 문자열의 길이를 셀 수 있다.
 
 문자열 인덱스
 startIndex, endIndex, index(before:), index(after:), index(_:offsetBy: ) 메소드를 통해 문자열에서 특정 문자에 접근할 수 있다. => 이 메소드는 Collection 프로토콜을 따르는 Array, Dictionary, Set 등에서 역시 동일하게 사용할 수 있다.
 
 지정되 index 값을 벗어나는 값에 접근하면 에러가 발생
 
 개별 문자에 접근하기 위해 indiced 프로퍼티를 사용한다.
 */
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
print(greeting.endIndex)

for index in greeting.indices {
    print("\(greeting[index])")
}

/**
 문자 삽입과 삭제
 insert(:at:)
 insert(contentsOf:at:)
 remove(at:)
 removeSubrange(:)
 
 부분 문자열
 subString을 계속 사용하는 이상 원본의 String이 계소 메모리에 남아있게 딘다. 그래서 subString을 오래동안 사용하려 한다면 String에서 인스턴스를 만들어 사용하는것이 메모리 측면에서 효율적이다.
 */
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf:" three", at: welcome.index(before: welcome.endIndex))
welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)


let greetingAgain = "Hello, World!"
let indexAgain = greetingAgain.index(of: ",") ?? greetingAgain.endIndex
let beginning = greetingAgain[..<indexAgain]

let newString = String(beginning)
