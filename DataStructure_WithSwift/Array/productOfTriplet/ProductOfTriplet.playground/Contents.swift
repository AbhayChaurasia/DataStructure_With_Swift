import UIKit

var greeting = "Hello, playground"
/*
 Given an integer array, find a maximum product of a triplet in the array.

 Examples:

 Input:  arr[ ] = [10, 3, 5, 6, 20]
 Output: 1200
 Explanation: Multiplication of 10, 6 and 20


 Input:  arr[ ] =  [-10, -3, -5, -6, -20]
 Output: -90


 Input: arr[ ] =  [1, -4, 3, -6, 7, 0]
 Output: 168


 */
struct FindMaxProductOfTriplet {
    
    func getMaxProductValue(_ arr : [Int]) -> Int
    {
        var max1 = Int.min
        var max2 = Int.min
        var max3 = Int.min
        var minA = Int.max
        var minB = Int.min
        
        
        for value in arr {
            if value > max1 {
                max3 = max2
                max2 = max1
                  max1 = value
                
            }
            else if value > max2 && value  < max1
            {
              max3 =   max2
                max2 = value
                
            }
            else if value > max3
            {
                max3 = value
            }
            else {}
            
            if value < minA {
                minB = minA
                minA = value
            }
            else if value < minB {
                minB = value
            }
            else {
                
            }
        }
        
     return   max(minA * minB * max1 , max1 * max2 * max3)
    }
}
let arr = [-10, -3, -5, -6, -20]

print(FindMaxProductOfTriplet().getMaxProductValue(arr))
//[Expected Approach] By Using Greedy approach – Time O(n) and Space O(1)

