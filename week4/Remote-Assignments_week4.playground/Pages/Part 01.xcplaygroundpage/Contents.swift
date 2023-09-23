import Foundation

//: # Part 01
//:----
/*:
    2. There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.
     
    Ans:
 
        Calling the reloadData() method will reload all the data used to construct the table. This includes cells, section headers and footers, index arrays, and more.

            1. cellForRowAtIndexPath: This method is used to get the cells for all the rows and sections.
            2. numberOfSections: Use this method to determine the number of sections in the table view.
            3. numberOfRowsInSection: Use this method to determine the number of rows in each section.
            4. cellForRowAt: This method is used to configure and return a cell.
 */

//:----
/*:
    4. (Advanced) Please complete the following function that prints a pyramid made of asterisks.
 
        func printPyramid(layers: Int) {
            // TODO: print a pyramid
        }
 
    For example, here’s what the output of printPyramid(layers: 5) should be:
 
            *
           ***
          *****
         *******
        *********
     
    Ans:
 */
        func printPyramid(layers: Int) {
            for i in 1...layers {
                let space = String(repeating: " ", count: layers - i)
                let star = String(repeating: "*", count: 2 * i - 1)
                
                print(space, terminator: "")
                print(star)
            }
        }

        printPyramid(layers: 10)

print("---------- ----------")

//:----
/*:
    5. (Optional) Do you have any App ideas that you are interested in and want to develop? List them along with a brief description (2 sentences at most), and no need to consider the availability, required techniques and business models at all.
     
    Ans:
 
        1. (Travel) Self-Guider
            "Have Dream? Let's Go!"
            An app that can store your preparations or give advice and information about your trip.
        
        2. (Clothing) WT2
            "What To Wear Today"
            An app that combines an Character Creation with apparel to give advice on your daily outfit. It considers your follow information such as horoscope, weather, style, personality, etc. and presents it on your own character.
        
        3. (Finance) Cashpon
            "Coupon to Cash"
            An app that allows people to trade their coupons.
 */
