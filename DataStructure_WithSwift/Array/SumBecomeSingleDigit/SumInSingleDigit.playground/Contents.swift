import UIKit

/*
 Given an integer n, we need to repeatedly find the sum of its digits until the result becomes a single-digit number.

 Examples:
 Input: n = 1234
 Output: 1
 Explanation:
 Step 1: 1 + 2 + 3 + 4 = 10
 Step 2: 1 + 0 = 1


 Input: n = 5674
 Output: 4
 Explanation:
 Step 1: 5 + 6 + 7 + 4 = 22
 Step 2: 2 + 2 = 4
 */
var greeting = "Hello, playground"

struct SumInSingleDigit {
    
    func getSingleDigitProb( _ numbers   : Int ) -> Int {
        var digit = numbers
        var sum = 0
        while digit > 0  || sum > 9 {
            if (digit == 0) {
                digit = sum;
                sum = 0;
                }
          sum = sum +  digit % 10
            digit = digit/10
        }
        
        
        return sum
    }
}
var number = 005
var singleDigit = SumInSingleDigit().getSingleDigitProb(number)
print(singleDigit)

//Time and Space Complexity === O(log10n)  , 0(1)
