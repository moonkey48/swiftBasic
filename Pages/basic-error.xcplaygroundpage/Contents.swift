enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}

class VendingMachine{
    var itemPrice: Int = 100
    var itemCount: Int = 5
    var deposited: Int = 0
    
    func receiveMoney(_ money: Int) throws{
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        self.deposited += money
        print("\(money)원 받음")
    }
    
    func vend(numberOfItems numberOfItemsToVend: Int) throws -> String {
        guard numberOfItemsToVend > 0 else {
            throw VendingMachineError.invalidInput
        }
        guard numberOfItemsToVend * itemPrice <= deposited else {
            let moneyNeeded: Int
            moneyNeeded = numberOfItemsToVend * itemPrice - deposited
            throw VendingMachineError.insufficientFunds(moneyNeeded: moneyNeeded)
        }
        guard itemCount >= numberOfItemsToVend else {
            throw VendingMachineError.outOfStock
        }
        
        let totalPrice = numberOfItemsToVend * itemPrice
        self.deposited -= totalPrice
        self.itemCount -= numberOfItemsToVend
        
        return "\(numberOfItemsToVend)개 제공"
    }
}

let machine: VendingMachine = VendingMachine()
var result: String?

//에러처리 방법1
do {
    try machine.receiveMoney(0)
} catch VendingMachineError.invalidInput {
    print("wrong input")
} catch VendingMachineError.insufficientFunds(let moneyNeeded){
    print("\(moneyNeeded)원이 부족합니다")
} catch VendingMachineError.outOfStock {
    print("재고가 부족합니다.")
}

//에러처리 방법2
do {
    try machine.receiveMoney(300)
} catch(let error) {
    switch error {
    case VendingMachineError.invalidInput:
        print("wrong input")
    case VendingMachineError.insufficientFunds(let moneyNeeded):
        print("\(moneyNeeded)원이 부족합니다")
    case VendingMachineError.outOfStock:
        print("재고가 부족합니다.")
    default:
        print("알 수 없는 오류 \(error)")
    }
}

//에러처리 방법3
do {
    result = try machine.vend(numberOfItems: 4)
} catch {
    print(error)
}

////에러처리 방법4
//do{
//    result = try machine.vend(numberOfItems: 4)
//}

//try?
result = try? machine.vend(numberOfItems: 2)
result
result = try? machine.vend(numberOfItems: 2)
result

//try!
result = try! machine.vend(numberOfItems: 1)
result
