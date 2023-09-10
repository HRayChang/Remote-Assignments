import Foundation

//: # Part 02_Enumerations and Optionals in Swift
//:----
/*:
    1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
 
        ● Please declare an enum named Gasoline to model gasoline.
        ● Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
        ● Please establish raw values for Gasoline. The data type of raw value should be String. For example, Gasoline.oil92.rawValue should be “92”.
        ● Please explain what enum associated value is and how it works.

    Ans:
 
        Associated Values work differently than raw values in that they let we associate a custom value, or values, with each enumeration case. The values for each case have their own data tyoe and each case can have zero or more associated values. We can also define associated values with label names. An enumeration can have raw value or associated values, but not both.
 */
        enum Gasoline: String {
            case oil92 = "92"
            case oil95 = "95"
            case oil98 = "98"
            case oildiesel = "diesel"
            
            var price: Double {
                switch self {
                case .oil92:
                    return 31.2
                case .oil95:
                    return 32.7
                case .oil98:
                    return 34.7
                case .oildiesel:
                    return 29.3
                }
            }
            
            func getPrice() -> Double {
                switch self {
                case .oil92:
                    return 31.2
                case .oil95:
                    return 32.7
                case .oil98:
                    return 34.7
                case .oildiesel:
                    return 29.3
                }
            }
        }

        print(Gasoline.oil92.rawValue)
        print(Gasoline.oil95.rawValue)
        print(Gasoline.oil98.rawValue)
        print(Gasoline.oildiesel.rawValue)

        print("92 price: \(Gasoline.oil92.price)")
        print("95 price: \(Gasoline.oil95.price)")
        print("98 price: \(Gasoline.oil98.price)")
        print("diesel price: \(Gasoline.oildiesel.price)")

        print("92 price: \(Gasoline.oil92.getPrice())")
        print("95 price: \(Gasoline.oil95.getPrice())")
        print("98 price: \(Gasoline.oil98.getPrice())")
        print("diesel price: \(Gasoline.oildiesel.getPrice())")

print("---------- ----------")

//:----
/*:
    2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int. You should have learned how to deal with Optional.
 
        ● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
        ● Please create a People instance. Use guard let to unwrap the pet property and print its name.
        ● Please create another People instance. Use if let to unwrap the pet property and print its name.

    Ans:
 */
        class Pet {
            var name: String
          
            init(name: String) {
                self.name = name
            }
        }

// In Pet class the name property is a String because every pet has a name.

        class People {
            var pet: Pet?
            
            init(pet: Pet?) {
                self.pet = pet
            }
        }

// In People class pet property is an optional because not everone has a pet.

        var Alan = People(pet: Pet(name: "Lulu"))

        guard let petName = Alan.pet?.name else {
            print("No pet.")
            fatalError()
        }
            print("Pet name is \(petName)")

        let Ray = People(pet: Pet(name: "Coco"))

        if let petName = Ray.pet?.name {
            print("Pet name is \(petName).")
        } else {
            print("No pet.")
        }

print("---------- ----------")

//:----
//: ## [Next: Part 03_Protocol in Swift](@next)
