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
    // Function to find leader elements in the array
    func findLeaderElements(_ arr: [Int]) -> [Int] {
        // Check if the array is empty
        guard !arr.isEmpty else { return [] }
        
        var leaders = [Int]()
        var maxElement = arr.last! // Start with the last element as the initial max
        
        // Append the last element as it is always a leader
        leaders.append(maxElement)
        
        // Iterate through the array in reverse order
        for i in stride(from: arr.count - 2, through: 0, by: -1) {
            if arr[i] >= maxElement {
                maxElement = arr[i]
                leaders.append(maxElement)
            }
        }
        
        // Since we collected leaders in reverse order, reverse the result before returning
        return leaders.reversed()
    }
}

// Example usage
let array = [16, 17, 4, 3, 5, 2]
let leaderElementsArray = LeaderElementPrint().findLeaderElements(array)
print(leaderElementsArray) // Output: [17, 5, 2]

//Output = [17 , 5, 2]
//Time Complexity = O(n)
//Space Complexity = O(1)
