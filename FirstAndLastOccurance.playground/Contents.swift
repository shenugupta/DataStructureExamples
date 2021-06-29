import UIKit

var str = "Hello, playground"
struct FirstAndLastOccurance {
func getIndex(arr: [Int], targetVal: Int, getFirst: Bool) -> Int {
    var start = 0
    var end = arr.count - 1
    var ans: Int = 0
    while start<=end {
        // get mid position in the arrat
        let mid = start + (end - start)/2
        // check if the target value matches in the array
        if arr[mid] == targetVal {
            ans = mid
            // fetch the first occurance in the array
            if getFirst {
              end = mid - 1
            }
            // fetch the last occurance in the array
            else {
             start =  mid + 1
            }
        }
        // if target value greater than array mid then search right side of the array
        else if  arr[mid] < targetVal{
            start =  mid + 1
        }
        // if target value less than array mid then search left side of the array
        else {
            end = mid - 1
        }
    }
    return ans
 }
}

var sortedArray = [1,1,2,2,3,3,4,4,4,5]
let firstAndLastOcc = FirstAndLastOccurance()
var getFirstIndex = firstAndLastOcc.getIndex(arr: sortedArray, targetVal: 1, getFirst: true)
var getLastIndex = firstAndLastOcc.getIndex(arr: sortedArray, targetVal: 1, getFirst: false)
print(getFirstIndex)
print(getLastIndex)
