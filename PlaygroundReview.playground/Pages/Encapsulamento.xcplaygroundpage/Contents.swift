class CreditCard {
    
    let number: String
    let limit: Double
    private var invoinceValue: Double = 0
    
    let iof: Double = 6.38
    
    init(number: String, limit: Double) {
        self.number = number
        self.limit = limit
    }
    
    final func makePurchase(off value: Double, isInternational: Bool) -> Bool {
        let debit = isInternational  ? value * (1 + iof/100) : value
        let finalValue = invoinceValue + debit
        if finalValue > limit {
            return false
        } else {
            invoinceValue = finalValue
            return true
        }
    }
    
    func getInvoice() -> Double {
        return invoinceValue
    }
    
    var invoice: Double {
        return invoinceValue
    }
    
}

let creditCard = CreditCard(number: "1234-5678-9876-5432", limit: 3000)
creditCard.makePurchase(off: 1500, isInternational: true)
// accessing a private attribute
print(creditCard.getInvoice())
print(creditCard.invoice)

class DebitCreditCard: CreditCard {
    
    private var _balance: Double = 0
    
    var balance: Double {
        return _balance
    }
    
    func makeTransaction(of value: Double) {
        _balance += value
    }
    
}

let debitCreditCard = DebitCreditCard(number: "1234-4321-1234-4321", limit: 5000)
debitCreditCard.makeTransaction(of: 500)
debitCreditCard.makeTransaction(of: -100)
print(debitCreditCard.balance)
