import Foundation

//: # Part 03_Collection
//:----
/*:
    1. Please initialize an empty array with String data type and assign it to a variable named .myFriends.
 
    Ans:
 */
        var myFriends: [String] = []

        print(myFriends)

print("---------- ----------")

//:----
/*:
    2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.
        
    Ans:
 */
        myFriends += ["Ian", "Bomi", "Kevin"]

        print(myFriends)

print("---------- ----------")

//:----
/*:
    3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.
 
    Ans:
 */
        myFriends.append("Michael")

        print(myFriends)

print("---------- ----------")

//:----
/*:
    4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.
 
    Ans:
 */
        myFriends.swapAt(0, 2)

        print(myFriends)

print("---------- ----------")

//:----
/*:
    5. Use for...in to print all the friends in myFriends array.
 
    Ans:
 */
        for i in 0...myFriends.count - 1 {
            print("Friends in myFriends array: \(myFriends[i])")
        }

print("---------- ----------")

//:----
/*:
    6. Now I want to know who is at index 5 in the myFriends array, try to find the answer for me. Please explain how you get the answer and why the answer is it.
 
    Ans:
 
        print(myFriends[5]) The output will be an error due to there are only four elements in myFriends array ["Kevin", "Bomi", "Ian", "Michael"] which is the index of [0, 1, 2, 3]. Therefore, you can't find the index over 3.
 */

//:----
/*:
    7. How to get the first element in an array?
 
    Ans:
 */
        let firstElement = myFriends.first

        if let firstElement = myFriends.first {
            print("First element is \(firstElement)")
        }

print("---------- ----------")

//:----
/*:
    8. How to get the last element in an array?
 
    Ans:
 */
        let lastElement = myFriends.last

        if let lastElement = myFriends.last {
            print("Last element is \(lastElement)")
        }

print("---------- ----------")

//:----
/*:
    9. Please initialize a Dictionary with keys of type String, value of type Int, and assign it to a variable named myCountryNumber.
 
    Ans:
 */
        var myCountryNumber: [String: Int] = [:]

        print("My country number: \(myCountryNumber)")

print("---------- ----------")

//:----
/*:
    10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.
 
    Ans:
 */
        myCountryNumber["US"] = 1
        myCountryNumber["GB"] = 44
        myCountryNumber["JP"] = 81

        print("My country number: \(myCountryNumber)")

print("---------- ----------")

//:----
/*:
    11. Change the value of ‘GB’ from 44 to 0.
 
    Ans:
 */
        myCountryNumber.updateValue(0, forKey: "GB")

        print("(Method 01) My country number: \(myCountryNumber)")

        myCountryNumber["GB"] = 0

        print("(Method 02) My country number: \(myCountryNumber)")

print("---------- ----------")

//:----
/*:
    12. How to declare an empty dictionary?
 
    Ans:
        
        var emptyDictionary: [String: Int] = [:]
 
        First, we need to specify the types for both the keys and the values, with a colon right after the key type, then put a colon right between a pair of square brackets. Also, the type annotation is required.
 */

//:----
/*:
    13. How to remove a key-value pair in a dictionary?
 
    Ans:
        
        [Method 01]
        We can use the removeValue method to remove the value for a specific key, that removes the entire of pair. What's more, the removeValue returns the value corresponding to the key we just removed, in case we wanna do something with that value.
 
        [Method 02]
        Due to we can't have a key without a value in dictionary. Therefore, we can remove a key-value pair by setting the key's value to nil.
        
 */
        myCountryNumber.removeValue(forKey: "US")

        print("(Method 01) My country number: \(myCountryNumber)")

        myCountryNumber["GB"] = nil

        print("(Method 02) My country number: \(myCountryNumber)")

//:----
//: ## [Next: Part 04_Control Flow](@next)
