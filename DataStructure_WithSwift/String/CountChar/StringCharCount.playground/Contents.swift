import UIKit

/*
 Given a string s, the task is to find the length of the string.

 Examples:

 Input: s = “abc”
 Output:  3


 Input: s = “GeeksforGeeks”
 Output: 13


 Input: s = “”
 Output: 0
 */
var greeting = "Hello, playground"
struct StringCount {
    
    func countChar( _ value : String) -> Int
    {
       
        var count = 0
        for i in value
        {
             count += 1
          
        }
        return  count
    }
}

var countValue = StringCount().countChar("Abcdef")
print(countValue)

