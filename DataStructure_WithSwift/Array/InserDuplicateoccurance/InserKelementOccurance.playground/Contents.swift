import UIKit

 

 /*
 Insert duplicate of K adjacent to it for it’s every occurrence in array
  Given an array arr consisting of N integers and an integer K, the task is to insert an adjacent K for every occurrence of it in the original sequence and then truncate the array to the original length using an O(1) auxiliary space.

 Examples:


 Input: arr[] = {1, 0, 2, 3, 0, 4, 5, 0}, K = 0
 Output: {1, 0, 0, 2, 3, 0, 0, 4}
 Explanation:
 The given array {1, 0, 2, 3, 0, 4, 5, 0} is modified to {1, 0, 0, 2, 3, 0, 0, 4] after insertion of two 0’s and truncation of extra elements.


 Input: arr[] = {7, 5, 8}, K = 8
 Output: {7, 5, 8}
 Explanation:
 After inserting an adjacent 8 into the array, it got truncated to restore the original size of the array.

 */
struct InsertDuplicate {
    
    func  arrangeValue(_ nums : [Int] , K : Int) -> [Int] {
        var val = K
        var nums = nums
        var n =  nums.count
        for i  in 0..<nums.count {
            if nums[i] == val  && i < n-1 {
                var temp = nums[i + 1]
                nums[i + 1] = nums[i]
               // nums[i + 2]  = temp
                nums.remove(at: n - 1)
            }
            
        }
        
        return nums
    }
    
    
    
}

var value = [1, 0, 2, 3, 0, 4, 5, 0]
var getarry = InsertDuplicate().arrangeValue(value, K: 0)
print(getarry)
