import UIKit

var greeting = "Hello, playground"
/*Given an array arr[], the task is to reverse the array. Reversing an array means rearranging the elements such that the first element becomes the last, the second element becomes second last and so on.

Examples:

Input: arr[] = {1, 4, 3, 2, 6, 5}
Output: {5, 6, 2, 3, 4, 1}
Explanation: The first element 1 moves to last position, the second element 4 moves to second-last and so on.


Input: arr[] = {4, 5, 1, 2}
Output: {2, 1, 5, 4}
Explanation: The first element 4 moves to last position, the second element 5 moves to second last and so on.*/



struct ReverseArray {
    // Function to find leader elements in the array
    func reverseElement(_ arr: [Int]) -> [Int] {
        // Check if the array is empty
        var arrs = arr
        var temp = 0
        var left = 0
        var right = arr.count - 1
         guard !arr.isEmpty else { return [] }
         // Iterate   the array in 1... order
        while(left < right ) {
            temp = arr[left]
            arrs[left] = arrs[right]
            arrs[right] = temp
            left = left + 1
            right = right - 1
            
        }
        return arrs
        }
   
     }


// Example usage
let array = [20, 20, 78, 98, 99]
var reverseArry = ReverseArray().reverseElement(array)
print(reverseArry)
 
