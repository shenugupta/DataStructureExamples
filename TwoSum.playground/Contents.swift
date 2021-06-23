import UIKit

var str = "Hello, playground"



struct CalculateSum {
    
    func getTwoSumInArrayOfTargetVal(arr: [Int], targetVal: Int) -> (Int,Int){
    var dict = [Int : Int]()
for index in 0...arr.count-1 {
    let searchVal = targetValue - arr[index]
    if let dictIndex = dict[searchVal] {
        return (dictIndex,index)
    }
    else {
        dict[arr[index]] = index
    }
  }
        return (0,0)
 }
}

var obj = CalculateSum()
var arr = [3,5,6,2,5,4,8,2]
let targetValue = 8


var twoSumOutput = obj.getTwoSumInArrayOfTargetVal(arr: arr, targetVal: targetValue)
print(twoSumOutput)
