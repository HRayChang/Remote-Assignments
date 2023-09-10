import Foundation

//: # Part 01_Object-Oriented Swift
//:----
/*:
    1. Declare a class Animal with a property gender and a method eat(). The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
 
            enum Gender {
                case male
                case female
                case undefined
            }
  
    Ans:
 */
        enum Gender {
            case male
            case female
            case undefined
        }

        class Animal {
            
            var gender: Gender
            
            init(gender: Gender) {
                self.gender = gender
            }
            
            class func eat() {
                print("I eat everything!")
            }
        }

        Animal.eat()

print("---------- ----------")

//:----
/*:
    2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
 
    Ans:
 */
        class Elephant: Animal {
            class override func eat() {
                print("I eat greens!")
            }
        }

        Elephant.eat()

        class Horse: Animal {
            class override func eat() {
                print("I eat greens!")
            }
        }

        Horse.eat()

        class Tiger: Animal {
            class override func eat() {
                print("I eat meats!")
            }
        }

        Tiger.eat()

print("---------- ----------")

//:----
/*:
    3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger, elephant, and horse are instances of class Tiger, Elephant, and Horse respectively.
 
            class Zoo {
                
                var weeklyHot: A
                
                init(weeklyHot: A) { }
            
            }
             
            let zoo = Zoo(weeklyHot: Tiger())
            
            zoo.weeklyHot = tiger
            zoo.weeklyHot = elephant
            zoo.weeklyHot = horse
 
    Ans:
 */
        class Zoo {
            
            var weeklyHot: Animal
            
            init(weeklyHot: Animal) {
                self.weeklyHot = weeklyHot
            }
        }
         
        let zoo = Zoo(weeklyHot: Tiger(gender: .undefined))

        let tiger = Tiger(gender: .undefined)
        let elephant = Elephant(gender: .undefined)
        let horse = Horse(gender: .undefined)

        zoo.weeklyHot = tiger
        zoo.weeklyHot = elephant
        zoo.weeklyHot = horse

print("---------- ----------")

//:----
/*:
    4. What is an instance? What does Initilizer do in Class and Struct?
 
    Ans:

        Instance: When we declare a struct or class, it's just a declaration, it doesn't do anything. Think of it like a blueprint for a building. To use them we need to create an instance of them, we can think of this as turning this blueprint for a building into an actual building.
 */

//:----
/*:
    5. What’s the difference between Struct and Class?
 
    Ans:
 
        Classes are similar to structures, they both have properties and methods. But one big difference is their different types and they have completely different way to share the value.
        
        Structures are value types, all the variables we assign will be independent. An instance of a structure is conceptually a value, structures copy their values when used in a new place, and structures are completely immutable when they're declared as constants. Therefore, if we assign an instance of a structure to a constant or a variable, we're creating an entirely new structure, with the same values as the original. Similarly, when we mutate any of its properties, we're actually making an entirely new structure based on the original.

        Classes are reference types. Classes instances are objects with identity, classes share their data when used in a new place, and class properties remain mutable when they're declared as constants. We can't mutate the constant properties of a class instance. However, when we change anything marked with var, we are still working on the old object, but with a new value, and that applies even if our object is declared as a constant.
 */

//:----
/*:
    6. What’s the difference between reference type and value type ?
 
    Ans:
 
        When we assign the value of one instance of a value type, to another instance of that type, those two instances are completely independent. If we make a copy of a value type, and set the value of the copy to something completely different, they will no longer match. However, reference types work differently. If we make a copy of a reference type, the two instances are both referencing the same data. Making a change to one instance also changes the other instance.
 */

//:----
/*:
    7. What’s the difference between instance method and type method ?
 
    Ans:
 
        Instance method: An instance method needs an instance to execute the method. Instance method needs to be called on an instance and cannot be called on a type.
 
        Type method: Type method prefix with the static or class keyword. That keyword tells the compiler this is a type method. A type method can only be called on the type that defines the type method.
 */

//:----
/*:
    8. What does self mean in an instance method and a type method respectively?
 
    Ans:
 
        Self in an instance method: Every instance of a type has an implicit self property, which is exactly equivalent to the instance itself. We can use the self property to refer to the current instance within its own instance methods.
 
        Self in a type method: The implicit self property refers to the type itself, rather than an instance of that type.
*/

//:----
//: ## [Next: Part 02_Enumerations and Optionals in Swift](@next)
