var ints1: Array<Int> = Array<Int>()
var ints2: Array<String> = [String]()
var ints3: [Character] = [Character]()
var ints4: [Float] = []

let someDictionary: [String: String] = ["name": "austin"]
let name: String = someDictionary["name"]
// 이 상태에서는 name이라는 key에 해당하는 value가 String으로 있을수도 있고 없을 수도 있기 때문에 에러가 발생한다.
