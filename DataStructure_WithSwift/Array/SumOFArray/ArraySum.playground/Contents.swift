import UIKit

//MARK :- Second Largest Element in an Array

var greeting = "Hello, playground"
struct SumArrayElement {
    
    func getSumValue( _ num : [Int] ) ->   Int  {
        var array = num
        var sum = 0
        for value in array {
            sum = sum + value
        }
        return  sum
        
    }
    
    
    
}
var array = [3,4,5,3,5]
//var sumValue = SumArrayElement()
var getArraySumValue = SumArrayElement().getSumValue(array)
print( getArraySumValue )



//Time Complexity: ( O(n) )
//Space Complexity: ( O(1) )
