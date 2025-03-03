import UIKit

var greeting = "Hello, playground"


//Reverse an Array in groups of given size

/*
 Given an array arr[] and an integer k, the task is to reverse every subarray formed by consecutive K elements.
 
 Examples:
 
 Input: arr[] = [1, 2, 3, 4, 5, 6, 7, 8, 9], k = 3
 Output: 3, 2, 1, 6, 5, 4, 9, 8, 7
 
 
 Input: arr[] = [1, 2, 3, 4, 5, 6, 7, 8], k = 5
 Output: 5, 4, 3, 2, 1, 8, 7, 6
 
 
 Input: arr[] = [1, 2, 3, 4, 5, 6], k = 1
 Output: 1, 2, 3, 4, 5, 6
 
 
 Input: arr[] = [1, 2, 3, 4, 5, 6, 7, 8], k = 10
 Output: 8, 7, 6, 5, 4, 3, 2, 1
 */

struct ReverseInGroup{
    
    func reverseArrayInGroup(_ arr : [Int] , groupSize : Int) -> [Int] {
        var result = [Int]()
        for i in stride( from : 0  , to : arr.count , by :  groupSize) {
           print("now i is " , i)
            let end = min( i + groupSize  ,  arr.count)
            let group =  Array(arr[i..<end])
            
            result.append(contentsOf: group.reversed())
            

        }
        return result
          
        
    }
}



var arr = [1, 2, 3, 4, 5, 6, 7, 8]
let reverseValue = ReverseInGroup().reverseArrayInGroup(arr, groupSize : 3)

print(reverseValue)

////var myArray = [Int]()
////print("Address before appending: \(Unmanaged.passUnretained(myArray as NSArray).toOpaque())")
//  var myArray = [1, 2, 3] // Initial array
//print("Address before appending: \(Unmanaged.passUnretained(myArray as NSArray).toOpaque())")
//
//myArray.append(4) // Appending an element
//print("Address after appending: \(Unmanaged.passUnretained(myArray as NSArray).toOpaque())")
