import UIKit

var greeting = "Hello, playground"

/* Question---
 Given an array arr[] of size n, the task is to find all the Leaders in the array. An element is a Leader if it is greater than or equal to all the elements to its right side.
 
 Note: The rightmost element is always a leader.
 
 Input: arr[] = [16, 17, 4, 3, 5, 2]
 Output: [17 5 2]
 Explanation: 17 is greater than all the elements to its right i.e., [4, 3, 5, 2], therefore 17 is a leader. 5 is greater than all the elements to its right i.e., [2], therefore 5 is a leader. 2 has no element to its right, therefore 2 is a leader.
 
 
 Input: arr[] = [1, 2, 3, 4, 5, 2]
 Output: [5 2]
 Explanation: 5 is greater than all the elements to its right i.e., [2], therefore 5 is a leader. 2 has no element to its right, therefore 2 is a leader.*/

struct LeaderElementPrint {
    //first Approach ---
    func findLeadElement(_ arr : [Int]) -> [Int]
    {
        guard  arr.count > 1  else {return  [0] }
        var n = arr.count
        var maxElement = arr[n-1]
        var result = [Int]()
        result.append(maxElement)
        for i in stride(from: n-2, through : 0  , by: -1) {
            if arr[i] >= maxElement {
                maxElement = arr[i]
                result.append(maxElement)
            }
            
            
        }
        return result
    }
    
    
}
var arry = [16, 17, 4, 3, 5, 2]
var findLeadElementArry = LeaderElementPrint().findLeadElement(arry)
print(findLeadElementArry)

//Output = [17 , 5, 2]
//Time Complexity = O(n)
//Space Complexity = O(1)
