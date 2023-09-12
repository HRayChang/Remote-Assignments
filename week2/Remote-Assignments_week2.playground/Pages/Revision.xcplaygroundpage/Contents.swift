import Foundation

//: # Revision
//:----
/*:
    [1-1]. Declare a class Animal with a property gender and a method eat(). The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”

         enum Gender {
             case male
             case female
             case undefined
         }

    Orig.:
        
        none.
    
    Rev.:
        
        I believe that using a type method is a better approach. This is because a type method can be called on the type that defines the type method. In this case, since all animals in the same class eat the same thing, we don't need to create an instance for every individual animal. A type method can cover all the animals in the same class.
 */


//:----
/*:
    [1-7]. What’s the difference between instance method and type method ?

    Orig.:
     
        none.
 
    Rev.:

        Both the static and class keywords can be used to declare a type method. However, the difference between class and static func becomes apparent when we subclass the class.
        
        static func cannot be overridden by subclasses of the class that defines the static func.
        
        Therefore, static func can be used in enums, structs, or subclasses that will not be overridden. On the other hand, class func must be used when we need to override the type method in a subclass.
 */

//:----
/*:
    [5]. Remove either "text" or "color" (total of 6) randomly, leave everything else unchanged. What will happen if you click the button multiple times after running the code? How can you adjust it for better performance?
 
    Orig.:
 
        none.
 
    Rev.:
 
        Since we changed the total number from seven to six, the project may encounter an issue where the index is out of range for the color and text arrays when the randomNumber is 6. Arrays start from index 0, so the maximum index is 5.

        To resolve this issue, we can narrow the index range from 0...6, which is a total of seven numbers, to 0...5, which is a total of six numbers.
    
            var randomNumber = Int.random(in: 0...5)
 
        To solve this problem permanently, connect the randomNumber with the total number of the array.
 
            func change() {
                if text.count == color.count {
                    let totalArrayNumber = text.count - 1
                     
                    let randomNumber = Int.random(in: 0...totalArrayNumber)
                     
                    backgroundImageView.backgroundColor = color[randomNumber]
                    labelTextView.text = text[randomNumber]
                } else {
                    fatalError("Numbers of color and numbers of text are not the same!")
                }
            }
 */
 
//:----
/*:
    [5]. Yellow warning in var randomNumber = Int.random(in: 0...6)
     
    Orig.:
      
        func change() {
            var randomNumber = Int.random(in: 0...6)
             
            backgroundImageView.backgroundColor = color[randomNumber]
            labelTextView.text = text[randomNumber]
        }

    Rev.:
 
        func change() {
            let randomNumber = Int.random(in: 0...6)
             
            backgroundImageView.backgroundColor = color[randomNumber]
            labelTextView.text = text[randomNumber]
        }
 */
