//: [Previous](@previous)
enum Temperature{
    case hot
    case warm
    case cold (centigrade: Int)
}

func displayTempInfo(temp: Temperature) {
    switch temp {
    case .hot:
        print("It is hot.")
    case .warm:
        print("It is warm.")
    case .cold (let centigrade) where centigrade <= 0:
        print("Ice warning: \(centigrade) degrees.")
    case .cold:
        print ("It is cold but not freezing")
    }
}

displayTempInfo(temp: Temperature.warm)
displayTempInfo (temp: Temperature.cold (centigrade: -10))

//: [Next](@next)
