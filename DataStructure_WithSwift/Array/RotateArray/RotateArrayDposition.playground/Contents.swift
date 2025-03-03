import UIKit

var greeting = "Hello, playground"
/*
 Given an array of integers arr[] of size n, the task is to rotate the array elements to the left by d positions.

 Examples:

 Input: arr[] = {1, 2, 3, 4, 5, 6}, d = 2
 
 // 6 5 4 3 2 1
 //  3 4 5 6 2 1 
 // 3 4 6 5  1  2
 Output: {3, 4, 5, 6, 1, 2}
 Explanation: After first left rotation, arr[] becomes {2, 3, 4, 5, 6, 1} and after the second rotation, arr[] becomes {3, 4, 5, 6, 1, 2}


 Input: arr[] = {1, 2, 3}, d = 4
 Output: {2, 3, 1}
 Explanation: The array is rotated as follows:


 After first left rotation, arr[] = {2, 3, 1}
 After second left rotation, arr[] = {3, 1, 2}
 After third left rotation, arr[] = {1, 2, 3}
 After fourth left rotation, arr[] = {2, 3, 1}
 */

struct RotateArrayDposition 

{
    
    func getRotateValue(   arr :  inout [Int] , d : Int) -> [Int]
    {
        let effectiveD = d % arr.count
        var  n = arr.count
        
        reverseValue(&arr, start: 0, end: n - 1)
                
                // Step 2: Reverse the first n - d elements
        reverseValue(&arr, start: 0, end: n - effectiveD - 1)
                
                // Step 3: Reverse the last d elements
        reverseValue(&arr, start: n -  effectiveD , end: n - 1)
      return arr
    }
    func reverseValue( _ arr : inout [Int] , start : Int , end : Int) {
        var start = start
        var end = end
        while (start < end) {
           
            var temp = arr[start]
            arr[start] = arr[end]
            arr[end] = temp
            start = start + 1
            end = end - 1
            
        }
       
      
        
    }
    
    
}
var value = [1, 2, 3 , 4 ,5 ,6]
var d = 4

var RotateArray = RotateArrayDposition()
print(RotateArray.getRotateValue(arr: &value, d: d))
