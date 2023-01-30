let hello: (String, String) -> String = { $1 + $0 + "hi" }
hello("austin ", "moon ")

var add: (Int, Int) -> Int
add = { $0 + $1 }
add(1,2)
