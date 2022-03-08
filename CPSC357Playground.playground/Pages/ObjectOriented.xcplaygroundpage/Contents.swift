//: [Previous](@previous)
import Foundation

class BankAccount{
    var accountBalance: Float = 0   //this is a stored property
    var accountNumber: Int = 0; //this is a stored property
    let fees: Float = 25.00
    
    var balanceLessFees: Float {  //this is a computed property
        get {
            return accountBalance - fees
        } set (newBalance) {
            accountBalance = newBalance - fees
        }
    }
    
    init (number: Int, balance: Float) {
        accountNumber = number
        accountBalance = balance
    }
    
    class func getMaxBalance() -> Float {
        return 10000.0
    }
    
    func displayBalance() {
        print ("Number \(accountNumber)")
        print ("Current balance is \(accountBalance)")
    }
}

class SavingAccount : BankAccount {
    var interestRate: Float = 0.0
    
    init(number: Int, balance: Float, rate: Float) { //initializer
        interestRate = rate
        super.init(number: number, balance: balance)
    }
    
    func calculateInterest() -> Float {
        return interestRate * accountBalance
    }
    
    override func displayBalance() {
        // option 1
//        print("Number \(accountNumber)")
//        print("Current balance is \(accountBalance)")
//        print("Prevailing interest rate is \(interestRate)")
        
        //option 2
        super.displayBalance()
        print("Prevailing interest rate is \(interestRate)")
    }

}

var saving1: SavingAccount = SavingAccount (number:123432, balance: 100, rate: 0.1)
saving1.displayBalance()
saving1.calculateInterest()

var account1: BankAccount = BankAccount (number: 123132,  balance: 12.54)

account1.displayBalance()
var balance1 = account1.accountBalance
print(balance1)

account1.accountBalance = 6789.98
account1.displayBalance()
var balance2 = account1.accountBalance
print(balance2)

var maxAllowed = BankAccount.getMaxBalance()
print(maxAllowed)

var balanceLessFees1 = account1.balanceLessFees
account1.balanceLessFees = 12123.12
print(balanceLessFees1)
//: [Next](@next)
