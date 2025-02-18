import UIKit

 

//QUESTION __ Given an array of positive integers arr[] of size n, the task is to find second largest distinct element in the array.


struct SecondLargeElement {
  //first Approach ---
    func secondLargeValue(_ num : [Int]) -> Int
    {
        guard  num.count > 1  else {return  -1}
        var firstMax =  Int.min
        var secondMax = Int.min
        
        for value in num {
            if value > firstMax {
                  secondMax = firstMax
                firstMax = value
                
            }
            else if value > secondMax  && value < firstMax {
                secondMax = value
            }
        }
        return secondMax
    }
    
    
}
var arry = [23,32,12,65,7,8]
var getSecondLargestValue = SecondLargeElement()
print(getSecondLargestValue.secondLargeValue(arry))




//Second approch is this you can first Find largest element array from the one loop then after run second loop and compare to element from arr[0] to secondlarge , in second store initial -1 or arr[0] and apply condition second large value is less then largest and greater than current if true than change the store secondlarge value from the current element   but in this approch u have to run two loop but time complexity is same

//-----------------------------------Third Approach------
//Use Sorting method in decreasing  order and arr[1] elemnt is second large
