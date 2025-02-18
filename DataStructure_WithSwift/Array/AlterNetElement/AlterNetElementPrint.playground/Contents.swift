import UIKit

//Given an array arr[], the task is to print every alternate element of the array starting from the first element.

struct AlternetElementPrint {
    //first Approach ---
    func alternetvaluePrint(_ num : [Int]) -> [Int]
    {
        guard  num.count > 1  else {return  [0]}
        var result = [Int]()
        for i in stride(from: 0, to: num.count, by: 2) {
            result.append(num[i])
            
        }
        return result
    }
    
    
}
var arry = [23,32,12,65,7,8 , 5 ,6]
var getAlterArrayValue = AlternetElementPrint().alternetvaluePrint(arry)
var printNum = getAlterArrayValue.map {String($0)}.joined(separator: ", ")

print(printNum)
