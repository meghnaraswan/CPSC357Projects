/*:
 # Welcome to Playgrounds
 
This is your *first* playground
* The use of **Quick Look**
* Placing results **in-line** with the code
*/

import UIKit
import Foundation

var welcome = "Hello world!"

print(welcome)

var x = 10

for index in 1...20{
    let y = index * x
    x -= 1
    print(y)
}

let converterNumber: Int?
let possibleNumber = 123
converterNumber = Int(possibleNumber)
print(converterNumber!)

if converterNumber != 1{
    print(converterNumber!)
}

//var myString:String? = nil
var myString:String? = "iOS Course"
if myString != nil {
    print(myString!)
} else {
    print("return")
}

let customerName: String? = nil //creating constance where the value is nil and it is an optional string

var greetung = "Hello, playground"

func buildMessageFor(username name:String, usercount count:Int) -> String{
    return("\(name), you are customer number \(count)")
}

let message = buildMessageFor(username: "John", usercount: 100)
print(message)

func buildMessageFor2(_ name:String, _ count:Int) -> String{
    return("\(name), you are customer number \(count)")
}

let message2 = buildMessageFor2("John", 100)
print(message2)

//func buildMessageFor3(_ name:String = "Customer", _ count:Int) -> String{
//    return("\(name), you are customer number \(count)")
//}
//
//let message3 = buildMessageFor3(count: 100)

func square(numbers:Int...){
    for number in numbers{
        print("\(number) squared is \(number*number)")
    }
}
square(numbers:1,2,3,4,5,6,7,8,9)

func calculateArea(length: Float, width: Float) -> Float{
    var length = length
    var width = width
    length = length * 2.54
    width = width * 2.54
    return length * width
}

print(calculateArea(length: 10, width: 20))

var myValue = 10

func doubleVal(_ value:Int) -> Int{
    var value = value
    value+=value
    return(value)
}

print("Before function call = \(myValue)")
print("doubeValue call = \(doubleVal(myValue))")
print("After function call myValue = \(myValue)")

func doubleValue2(_ value: inout Int) -> Int{
    value+=value
    return(value)
}

print("Before function call = \(myValue)")
print("doubeValue call = \(doubleValue2(&myValue))")
print("After function call myValue = \(myValue)")

func addition(a:Int, b:Int) -> Int{
    return a + b
}

func subtraction(a:Int, b:Int) -> Int{
    return a - b
}

func multiply(a:Int, b:Int) -> Int{
    return a * b
}

func division(a:Int, b:Int) -> Int{
    return a / b
}

func calculate(a:Int, b:Int, operation:(Int, Int) -> Int){
    let result = operation(a,b)
    print(result)
}

calculate(a:7, b:2, operation:addition)
calculate(a:7, b:2, operation:subtraction)
calculate(a:7, b:2, operation:multiply)
calculate(a:7, b:2, operation:division)
