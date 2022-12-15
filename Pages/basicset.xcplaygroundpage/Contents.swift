import Swift

let setA: Set<Int> = [1,2,3,4,5]

let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB)

let intersection: Set<Int> = setA.intersection(setB)

let subtraction: Set<Int> = setA.subtracting(setB)

let sorted: [Int] = union.sorted()
