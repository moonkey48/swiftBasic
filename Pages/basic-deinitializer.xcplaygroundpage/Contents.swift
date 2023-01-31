class Bank {
    static var coinInBank = 10_000
    static func distribute(coins numberOfCoinsReuested: Int) ->Int {
        let numberOfCoinToVend = min(numberOfCoinsReuested, coinInBank)
        coinInBank -= numberOfCoinToVend
        return numberOfCoinToVend
    }
    static func receive(coins: Int){
        coinInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int){
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int){
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)
playerOne?.win(coins: 2_000)
Bank.coinInBank
playerOne = nil

Bank.coinInBank
