enum Fruit: Int {
    case apple
    case grape
    case peach = 2
    case orange
}
var apple: Fruit = .apple
var grape: Fruit = .grape
print(apple.rawValue)
print(grape.rawValue)

let peach: Fruit? = Fruit(rawValue: 2)
print(peach!)

if let orange: Fruit = Fruit(rawValue: 3) {
    print(orange)
}else {
    print("no orange")
}


enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage(){
        switch self {
        case .mar, .apr, .may:
            print("spring")
        case .jun, .jul, .aug:
            print("summer")
        case .sep, .oct, .nov:
            print("autumn")
        case .dec, .jan, .feb:
            print("winter")
        }
    }
}

Month.dec.printMessage()
