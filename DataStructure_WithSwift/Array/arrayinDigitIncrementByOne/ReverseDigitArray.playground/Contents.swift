import UIKit

var greeting = "Hello, playground"


struct ReverseDigitArray {
    
    func reverseIncrementByOne(_ arr : [Int]) -> Int{
        
       
        var storage = ""
        for i in  arr {
            storage = storage +  "\(i)"
            
        }
        return Int(storage)! + 1
    }
}
var value = [0,0,0]
var reverseArray =  ReverseDigitArray()
print(reverseArray.reverseIncrementByOne(value))
