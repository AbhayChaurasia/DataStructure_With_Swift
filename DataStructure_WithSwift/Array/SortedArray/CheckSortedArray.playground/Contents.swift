import UIKit

var greeting = "Hello, playground"


/*Given an array of size n, the task is to check if it is sorted in ascending order or not. Equal values are allowed in an array and two consecutive equal values are considered sorted.

Examples:

Input: arr[] = [20, 21, 45, 89, 89, 90]
Output: Yes

Input: arr[] = [20, 20, 45, 89, 89, 90]
Output: Yes

Input: arr[] = [20, 20, 78, 98, 99, 97]
Output: No
 */
struct SortedArrayElementFind {
    // Function to find leader elements in the array
    func arraySortedOrNot(_ arr: [Int]) -> Bool {
        // Check if the array is empty
        var result = false
        guard !arr.isEmpty else { return false }
         // Iterate   the array in 1... order
        for i in 1..<arr.count
        {
            if arr[i-1] <= arr[i]
             {
                
                result = true
                
             }
            else {
                result = false
            }
        }
        return result
        }
 
    }


// Example usage
let array = [20, 20, 78, 98, 99, 97]
var checkArrayisSortorNot = SortedArrayElementFind().arraySortedOrNot(array)
if checkArrayisSortorNot {
    print("true" )
}
else {
    print("false")
}
 
