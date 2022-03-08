//: [Previous](@previous)
struct Address{
    var cityName: String = ""
    var city: String {
        get { cityName }
        set { cityName = newValue.uppercased() }
    }
}

var address = Address()
address.city = "London"
print(address.city)

@propertyWrapper
struct FixCase {
    var value: String = ""
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

struct Contact {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}
var contact = Contact(name: "John Smith", city: "London", country: "United Kingdom")
print("\(contact.name), \(contact.city), \(contact.country)")
//: [Next](@next)
