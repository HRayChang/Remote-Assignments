import Foundation

//: # Part 01
//:----
/*:
    1. What is a closure ? How to execute a closure?
     
    Ans:
 
        Closures are similar to functions, but with differences. You can call them, store them in variables, and use them in higher-order functions. Closures don't have names and have their own syntax. The closure's parameter list and return type go inside the curly braces, and the closure body is denoted by the in keyword.

        To execute a closure can simply use its name followed by parentheses and any necessary arguments.
 */
 
//:----
/*:
    2. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
 
    Ans:
 */
        var inputOddOrNot = { (num: Int) -> Bool in
            print("Input number is \(num). Is it odd?")
            if num % 2 == 1 {
                return true
            } else {
                return false
            }
            
        }
        
        print(inputOddOrNot(3))
        print(inputOddOrNot(2))

print("---------- ----------")

//:----
/*:
    3. Please complete the following function that prints a triangle made of asterisks.
 
        func printTriangle(layers: Int) {
            // TODO: print a triangle
        }
 
    For example, here’s what the output of printTriangle(layers: 5) should be:
 
        *
        **
        ***
        ****
        *****
 
    Ans:
 */
        func printTriangle(layers: Int) {
            for i in 1...layers {
                let star = String(repeating: "*", count: i)
                print(star)
            }
        }

        printTriangle(layers: 10)

print("---------- ----------")
