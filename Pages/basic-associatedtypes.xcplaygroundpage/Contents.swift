protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int {get}
    subscript(i: Int) -> Item { get }
}

//before using generics
/**
 아래의 구조체는 Int만 할당할 수 있어서 확장성이 떨어지고 같은 코드의 반복과 오루 가능성이 있다.
 */
struct IntStack: Container {
    //original IntStack implementation
    var items = [Int]()
    mutating func push(_ item: Int){
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
    //conformance to the Container protocol
    typealias Item = Int
    mutating func append(_ item: Int){
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
    
}

//after using generics
struct Stack<Element>: Container {
    var items: [Element]()
    mutating func push(_ item: Element){
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    mutating func append(_ item: Element){
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}
