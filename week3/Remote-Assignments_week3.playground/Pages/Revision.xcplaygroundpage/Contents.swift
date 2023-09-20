import Foundation

//: # Revision
//:----
/*:
    [2]. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.

    Orig.:
        
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
    
    Rev.:
 */
        var inputOddOrNot = {
            return $0 % 2 == 1
        }

        print(inputOddOrNot(3))
        print(inputOddOrNot(2))
