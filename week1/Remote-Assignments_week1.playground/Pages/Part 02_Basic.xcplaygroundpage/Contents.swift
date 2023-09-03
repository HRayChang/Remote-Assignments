import Foundation

//: # Part 02_Basic
//:----
/*:
    1. Please explain the difference between let and var.
 
    Ans:
 
        var: var creates a variable, which allows to remeber a single piece of data in temporary storage container, can be replace its content with a new value.
        
        let: let creates a constant, which will never be change.
 */

//:----
/*:
    2. In Swift, we usually define a variable through the syntax as below:
    
        var x: Int = 10.
 
       We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
 
    Ans:
 */
        let pi: Double = Double.pi
        print(pi)

print("---------- ----------")

//:----
/*:
    3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.
 
    Ans:
 */
        var x: Int
        var y: Int
            
        x = Int.random(in: 1...100)
        y = Int.random(in: 1...100)

        var average = (Float(x) + Float(y))/2

        print("x: \(x)")
        print("y: \(y)")
        print("Average Number: \(average)")

print("---------- ----------")

//:----
/*:
    4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
        ● Please solve this problem so that we can put the average in the record system.
        ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
    
    Ans:
        
        The difference between ( 10 / 3 ) and ( 10.0 / 3.0 ) is that when it's ( 10 / 3 ), both numbers are integers. Therefore, the computer will consider the output as an integer, and there will be no decimal. However when it's ( 10.0 / 3.0 ), both numbers are double. As a result, the computer will consider the output as a double, and the decimal will be retained.
 */
        x = 100
        y = 30
        average = (Float(x) + Float(y))/2

        var recordSystem = average

        print("Record system: \(recordSystem)")

        // Example (10 / 3)
        var intX = 10
        var intY = 3
        var numOfInt = intX / intY

        print("\(numOfInt)")

        // Example (10.0 / 3.0)
        var floatX = 10.0
        var floatY = 3.0
        var numOfFloat = floatX / floatY

        print("\(numOfFloat)")

print("---------- ----------")

//:----
/*:
    5. Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named remainder.
 
    Ans:
 */
        x = 10
        y = 3

        let remainder = x % y

        print("The remainder of \(x) divided by \(y) is \(remainder)")

print("---------- ----------")

//:----
/*:
    6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
        
         Ex: var x = 10 => var x: Int = 10
 
             var flag = true
             var inputString = "Hello world."
             let bitsInBite = 8
             let averageScore = 86.8
 
    Ans:
 
         var flag = true                    =>    var flag: Bool = true
         var inputString = "Hello world."   =>    var inputString: String = "Hellow world."
         let bitsInBite = 8                 =>    let bitsInBite: Int = 8
         let averageScore = 86.8            =>    let averageScore: Double = 86.8
 */
 
//:----
/*:
    7. What is Type Inference in Swift?
 
    Ans:
        
        Type Inference is an ability that Swift automatically deduce the type of a expression by the value we provide if we didn't specify the type we need.
 */

//:----
/*:
    8. What is the issue about this piece of code?
 
        var phoneNumber = 0987654321
        phoneNumber = "Hello world."
    
    Ans:
        
        First, we declare [var phoneNumber = 0987654321] although we didn't specify the expression type, Swift automatically deduces the type as an integer by the value we provide. Therefore, if we put a string ["Hellow world."] into an integer, there will pop up an error.
 */

//:----
/*:
    9. Compound assignment operators are very useful when programming. Please declare a variable salary with initial value 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process.

    Ans:
 */
        var salary = 22000
        salary += 28000

        print("The salary is \(salary)")

print("---------- ----------")

//:----
/*:
    10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant.
        
        Now please write down the Equality operator in Swift.

    Ans:
 */
        x = 10
        y = 10

        var checkXEqualToY: Bool = x == y
        print("Is X equal to Y: \(checkXEqualToY)")

//:----
//: ## [Next: Part 03_Collection](@next)
