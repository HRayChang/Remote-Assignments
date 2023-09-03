import Foundation

//: # Part 04_Control Flow
//:----
/*:
    1. Here is an array:
    
        let lottoNumbers = [10, 9, 8, 7, 6, 5]
    
    Please use For-In loop and Range to print the last three members in the lottoNumbers array.
 
    Ans:
 */
        let lottoNumbers = [10, 9, 8, 7, 6, 5]

        for i in lottoNumbers.count - 3...lottoNumbers.count - 1 {
            print("The last three lottoNumbers \(lottoNumbers[i])")
        }
        
print("---------- ----------")

//:----
/*:
    2. Please use a for-in loop to print the results as the images listed below respectively (through lottoNumbers):

         .5.6.7.8.9.10

         .10 .8 .6
 
    Ans:
 */
        for i in (0...lottoNumbers.count - 1).reversed() {
            print("For-in loop: \(lottoNumbers[i])")
        }

print("---------- ----------")

        for i in 0...lottoNumbers.count - 1 where i % 2 == 0 {
            print("For-in loop: \(lottoNumbers[i])")
        }

print("---------- ----------")

//:----
/*:
    3. Please use a while loop to solve the Q2.
 
    Ans:
 */
        var i = lottoNumbers.count - 1

        while i >= 0 {
            print("While loop: \(lottoNumbers[i])")
            i -= 1
        }

print("---------- ----------")

        var j = 0

        while j <= 4 {
            print("While loop: \(lottoNumbers[j])")
            j += 2
        }

print("---------- ----------")

//:----
/*:
    4. Please use a repeat-while loop to solve Q2.
 
    Ans:
 */
        i = lottoNumbers.count - 1

        repeat {
            print("Repeat-while loop: \(lottoNumbers[i])")
            i -= 1
        } while i >= 0

print("---------- ----------")

        j = 0

        repeat {
            print("Repeat-while loop: \(lottoNumbers[j])")
            j += 2
        } while j <= 4

print("---------- ----------")

//:----
/*:
    5. What are the differences between while and repeat-while?
 
    Ans:
 
        The difference between the two loops is that the while loop checks the condition first, so if the condition is false then the code will never execute. On the other hand, the repeat-while loop will run the code first before considering the condition, therefore no matter what the condition is, the repeat-while loop will run the code once.
 */

//:----
/*:
    6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
                                                                                            
    Ans:
 */
        var isRaining = Bool.random()

        if isRaining {
            print("It’s raining, I don’t want to work today.")
        } else {
            print("Although it’s sunny, I still don’t want to work today.")
        }

print("---------- ----------")

//:----
/*:
    7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director. Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.

    Ans:
*/
        // Method 01
        var jobList = [0, 1, 2, 3, 4]
        var jobLevel = jobList.randomElement()

        if jobLevel == 1 {
            print("(Method 01) Member")
        } else if jobLevel == 2 {
            print("(Method 01) Team Leader")
        } else if jobLevel == 3 {
            print("(Method 01) Manager")
        } else if jobLevel == 4 {
            print("(Method 01) Director")
        } else {
            print("(Method 01) We don't have this job.")
        }

print("---------- ----------")

        // Method 02
        var joblist = ["", "", "", ""]
        joblist[0] = String(Int.random(in: 0...4))
        joblist[1] = String(Int.random(in: 0...4))
        joblist[2] = String(Int.random(in: 0...4))
        joblist[3] = String(Int.random(in: 0...4))
        
        var findJob = Int.random(in: 1...4)
        
        print("(Method 02) Joblist: \(joblist)")
        print("(Method 02) Findjob: \(findJob)")

        if joblist.contains(String(findJob)) {
            if findJob == 1 {
                print("(Method 02) Member")
            } else if findJob == 2 {
                print("(Method 02) Team Leader")
            } else if findJob == 3 {
                print("(Method 02) Manager")
            } else {
                print("(Method 02) Director")
            }
        } else {
            print("(Method 02) We don't have this job.")
        }

//:----
//: ## [Next: Part 05_Function](@next)


