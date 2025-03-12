import UIKit

var greeting = "Hello, playground"


/*
 Rearrange Array Elements by Sign
 Last Updated : 15 Feb, 2025
 Given an array arr[] of size n, the task is to rearrange it in alternate positive and negative manner without changing the relative order of positive and negative numbers. In case of extra positive/negative numbers, they appear at the end of the array.

 Note: The rearranged array should start with a positive number and 0 (zero) should be considered as a positive number.

 Examples:

 Input:  arr[] = [1, 2, 3, -4, -1, 4]
 Output: arr[] = [1, -4, 2, -1, 3, 4]


 Input:  arr[] = [-5, -2, 5, 2, 4, 7, 1, 8, 0, -8]
 Output: arr[] = [5, -5, 2, -2, 4, -8, 7, 1, 8, 0]
 */
struct PositiveNegativeArrayAlter {
    func findPositiveNegativwValue(_ arr : [Int] ) -> [Int] {
        var negativeArry = [Int]()
        var positiveArry = [Int]()
        var result = [Int]()
        for i in arr {
            if i >= 0 {
                positiveArry.append(i)
            }
            else {
                negativeArry.append(i)
            }
        }
        
        let maxLength = max(positiveArry.count, negativeArry.count)
        
        for i in 0..<maxLength {
            if i < positiveArry.count {
                result.append(positiveArry[i])
            }
            if i < negativeArry.count {
                result.append(negativeArry[i])
            }
        }
        return  result
    }
    
}


var arr =   [1, 2, 3, -4, -1, 4]

var findValue = PositiveNegativeArrayAlter()
var getArry = PositiveNegativeArrayAlter().findPositiveNegativwValue(arr)
print(getArry)

//TIME AND SPACE Complexity = Time Complexity: (O(n))
//Space Complexity: (O(n))
