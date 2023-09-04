import Foundation

//: # Revision
//:----
/*:
    [1-2]. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
            
        ● (Advanced) git rebase
        ● (Advanced) git cherry-pick
        ● (Advanced) git reflog
        ● (Advanced) git tag
 
    Orig.:
        
        none.
        
    Rev.:
 
        ● (Advanced) git rebase: Change the base of a feature branch to the latest commit on the main and then place the changes from there. It gives a clean straightforward commit history like straightening out the rope in one line.
        ● (Advanced) git cherry-pick: Bring in changes from a specific commit without bring in the whole branch.
        ● (Advanced) git reflog: A tool that runs behind the scenes and records the movement of the head every time we switch branches or reset to specific commits. Therefore, we can navigate through the history and reset to a specific point after rebase or merge.
        ● (Advanced) git tag: References that point to specific points in git history. It's like a branch that doesn’t change and has no further history of commits.
 */
 
//:----
/*:
    [3-4]. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.
  
    Orig.:
        
        myFriends.swapAt(0, 2)

        print(myFriends)
 
    Rev.:
*/
        var myFriends = ["Ian", "Bomi", "Kevin", "Michael"]

        myFriends.remove(at: 2)
        myFriends.insert("Kevin", at: 0)
        
        print(myFriends)

print("---------- ----------")

//:----
/*:
    [3-5]. Use for...in to print all the friends in myFriends array.
 
    Orig.:
 
        for i in 0...myFriends.count - 1 {
 
        print("Friends in myFriends array: \(myFriends[i])")
 
        }
 
    Rev.:
 */
        for friend in myFriends {
            
            print("Friend in myFriends array: \(friend)")
            
        }

print("---------- ----------")

//:----
/*:
    [4-7]. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director. Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
 
    Orig.:
 
        none.

    Rev.:
 */
        var jobLevel = Int.random(in: 0...4)
        
        print(jobLevel)

        switch jobLevel {
            case 1:
                print("Member")
            case 2:
                print("Team Leader")
            case 3:
                print("Manager")
            case 4:
                print("Director")
            default:
                print("We don't have this job.")
            }

//:----
