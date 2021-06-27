import UIKit

var str = "Hello, playground"
struct FirstAndLastOccurance {
func getIndex(arr: [Int], targetVal: Int, getFirst: Bool) -> Int {
    var start = 0
    var end = arr.count - 1
    var ans: Int = 0
    while start<end {
        let mid = start + (end - start)/2
        if arr[mid] == targetVal {
            ans = mid
            if getFirst {
              end = mid - 1
            }
            else {
             start =  mid + 1
            }
        } else if  arr[mid] < targetVal{
            start =  mid + 1
        }
        else {
            end = mid - 1
        }
    }
    return ans
}
}

var sortedArray = [1,1,2,2,3,3,4,4,4,5]
let firstAndLastOcc = FirstAndLastOccurance()
var getFirstIndex = firstAndLastOcc.getIndex(arr: sortedArray, targetVal: 3, getFirst: true)
var getLastIndex = firstAndLastOcc.getIndex(arr: sortedArray, targetVal: 3, getFirst: false)
print(getFirstIndex)
print(getLastIndexh)
