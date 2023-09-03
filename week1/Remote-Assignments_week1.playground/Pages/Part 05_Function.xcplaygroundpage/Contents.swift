import Foundation

//: # Part 05_Function
//:----
/*:
    1. What are the return types in the following statements?
        
        func birthday( ) -> String {
        
        }
 
        func payment( ) -> Double {
    
        }
  
    Ans:
 */
        func birthday() -> String {
            return("Today is my birthday!")
        }
        
        print(birthday())
        // The return types of birthday is String

print("---------- ----------")

        func payment(for money: Int, productPrice: Int = 20) -> Bool {
            return(money >= productPrice)
        }
        
        print(payment(for: 20))
        print(payment(for: 10))
        // The return types of payment is Bool

print("---------- ----------")

//:----
/*:
    2. Please declare a function named multiply with two arguments a and b. This function won’t return any value and will only print out the result of a * b. Be noticed that we want to give the argument b a default value of 10.

    Ans:
 */
        func multiply(a: Int, b: Int = 10) {
            print(a * b)
        }

        multiply(a: 10)

print("---------- ----------")

//:----
/*:
    3. What’s the difference between argument label and parameter name in a function?
 
    Ans:
        
        Argument labels are definrd right before the parameter name in the parameter list. A function declares its parameters in its parameter list which can have more than one parameter. When we call a function, we provide values as arguments. If we have arguments that can't be usefully distinguished, we can leave off all of the argument labels by using underscore. We can also assign an argument label that differs from the parameter name in the parameter list.
 */

//:----
/*:
    4. Please declare a function named greet with person as an argument label and name as a parameter name. This greet function will return a String. For example, if you call the function greet like this:
 
        greet(person: "Luke")
 
        It will return the string: “Hello, Luke”.
 
    Ans:
 */
        func greet(person: String) {
            print("Hellow, \(person)")
        }

        greet(person: "Luke")

//:----
