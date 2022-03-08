/*:
 # Is my number primer?
 
 * pseudo-code:
 

    `func isPrime(number) -> return Bool{`
 
        isPrime = true
        if number > 3
            for i in 2 to number-1
                if number % 2 == 0
                    isPrime = false
         return isPrime
    `}`
 
 * function: The function I used was isPrime to see if the number passed through the function is prime based on its properties. If the number is able to divide any number from 2 to the number with a remainder of 0, then the number is not prime. Otherwise, it is prime.
 * parameters: number (to see if the number is prime or not)
 * return type: bool indicating if number is prime (true is prime, false if not prime)
 * varaibles: I used primeNumber as a boolean value to return if the number was a prime number or not. I also used numberMinOne as an integer value of the number passed minus 1. This is because if in the range the number divided by itself, the result would be 1, which would result in a remainder of 0. This is true for an integer value, so that is why I subtracted the number we are evaluating in the for loop.
 * calculation: By setting primeNumber to true when initializing, the if statement ensures that numbers 1, 2 and 3 will be considered as prime. If a number is greater than 3, it will enter the if-statement to chec to see if the number is prime. the for loop in the if statment tries to see if any numbers from 2 to the number are divisible by the number. If so and the remainder is 0, the number is not a prime number. Otherwise, it is.
 */

func isPrime(_ number:Int) -> Bool{
    var primeNumber:Bool = true
    var numberMinOne:Int = number - 1 //If in the range the number divided by itself, the result would be 1, which would result in a remainder of 0. To avoid this, we subtract by 1
    if (number > 3){ //1,2,3 are prime, so primeNumber is true
        for i in 2...(numberMinOne){
            if(number % i == 0){ //If the number is able to divide any number from 2 to the number with a remainder of 0, then the number is not prime. Otherwise, it is prime.
                primeNumber = false
                break
            }
        }
    }
    return primeNumber
}

print(isPrime(2)) // true
print(isPrime(3)) // true
print(isPrime(10)) // false
print(isPrime(13)) // true
print(isPrime(23)) // true
print(isPrime(25)) // false
print(isPrime(83)) // true
print(isPrime(103)) // true
print(isPrime(67)) // true
