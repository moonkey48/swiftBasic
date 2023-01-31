

struct Celsius {
    var temperatureInCelcius: Double
    init(fromFahrenheit fahrenheit: Double){
        temperatureInCelcius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double){
        temperatureInCelcius = kelvin - 273.15
    }
}

let boliingPointOfWater = Celsius(fromFahrenheit: 212.0)
boliingPointOfWater.temperatureInCelcius


class Food {
    var name: String
    init(name: String){
        self.name = name
    }
    convenience init(){
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int){
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String){
        self.init(name: name, quantity: 1)
    }
}

class ShoppingListItem: RecipeIngredient{
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? "✔" : " ✘"
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]

breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true

for item in breakfastList {
    print(item.description)
}


//실패 가능한 초기자
struct Animal {
    let species: String
    init?(species: String){
        if species.isEmpty { return nil }
        self.species = species
    }
}
let someCreature: Animal? = Animal(species: "horse")

enum TemperatureUnit: Character {
    case kelvin = "K", celsius = "C", fahrenheit = "F"
}

let fahrenheitUnit = TemperatureUnit(rawValue: "F")
if fahrenheitUnit != nil {
    print("This is a defined temperature unit, so initialization succeeded.")
}
// Prints "This is a defined temperature unit, so initialization succeeded."

let unknownUnit = TemperatureUnit(rawValue: "X")
if unknownUnit == nil {
    print("This is not a defined temperature unit, so initialization failed.")
}
// Prints "This is not a defined temperature unit, so initialization failed."


//실패 가능한 초기자의 오버라이드
class Document {
    var name: String?
    init(){}
    init?(name: String){
        if name.isEmpty {return nil}
        self.name = name
    }
}
class AutomaicallyNamedDocument: Document {
    override init(){
        super.init()
        self.name = "[Unnamed]"
    }
    override init(name: String){
        super.init()
        if name.isEmpty {
            self.name = "[Unnamed]"
        } else {
            self.name = name
        }
    }
}

class UntitledDocument: Document {
    override init(){
        super.init(name: "Untitled")!
    }
}
