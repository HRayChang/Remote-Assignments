import Foundation

//: # Part 03_Protocol in Swift
//:----
/*:
    1. Declare a struct Person with a name property type String and a protocol name PoliceMan . There is only one method arrestCriminals with no argument and return void in the protocol.
 
    2. Make struct Person conform to PoliceMan protocol.
 
    4. Add a property toolMan to the struct Person with data type ToolMan.
    
    Ans:
 */
        protocol PoliceMan {
            
            func arrestCriminals() -> Void
            
        }

        struct Person: PoliceMan {
            let name: String
            var toolMan: ToolMan
            
            func arrestCriminals() {
            }
        }

//:----
/*:
    3. Declare a protocol ToolMan with a method fixComputer that has no argument and return void.
 
    Ans:
 */
        protocol ToolMan {
            func fixComputer() -> Void
        }

//:----
/*:
    5. Declare a struct named Engineer that conforms to the ToolMan protocol.
 
    Ans:
 */
        struct Engineer: ToolMan {
            func fixComputer() {
            }
        }

//:----
/*:
    6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.

    Ans:
 */
        let steven = Person(name: "Steven", toolMan: Engineer())
        print(steven)

print("---------- ----------")

//:----
//: ## [Next: Part 04_Error Handling in Swift](@next)
