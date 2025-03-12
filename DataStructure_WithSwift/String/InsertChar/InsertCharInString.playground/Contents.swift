import UIKit

var greeting = "Hello, playground"
/*
 Given a string s, a character c and an integer position pos, the task is to insert the character c into the string s at the specified position pos.

 Examples:

 Input: s = "Geeks", c = 'A', pos = 3
 Output: GeeAks

 Input: s = "HelloWorld", c = '!', pos = 5
 Output: Hello!World
 */

struct InsertCharInString {
    
    func addString(_ value : inout String , id : Int , char : Character) -> String {
        
        var welcome = Array(value)
        welcome.insert(char, at: id)
        return String(welcome)
        
    }
}
var a = "abhcety"
var insert = InsertCharInString().addString(&a, id: 3, char: "d")
print(insert)
