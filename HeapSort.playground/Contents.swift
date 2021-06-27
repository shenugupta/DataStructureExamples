import UIKit
import Foundation

var str = "Hello, playground"

struct HeapSort {
    
    func heapify( arr:inout [Int],n: Int, i: Int) {
        var largest = i
        let left = 2 * i + 1
        let right = 2 * i + 2
        // if left non leaf node greater than largest parent index then make it set as largest
        if left < n && arr[left] > arr[largest] {
            largest = left
        }
        // if right non leaf node greater than largest parent index then make it set as largest
        if right < n && arr[right] > arr[largest] {
            largest = right
        }
        
        //until largest number not set to root element then heapfy method called with recurstion and swap this element to root element
        if largest != i {
            arr.swapAt(i, largest)
            heapify(arr: &arr, n: n, i: largest)
        }
    }
    
    func heapSort( arr: inout [Int]) -> Int{
        // max heap build
        let k = 3
        let n = arr.count
        var kLargestArr: [Int] = [Int]()
        //building the heap without taking consideration of leaf nodes
        for i in stride(from: n/2-1, through: 0, by: -1) {
            // using heapify method swap largest node to root element at index 0 until it reached to root element
            heapify(arr: &arr, n: arr.count, i: i)
        }
        
        //extract root element at index 0 and shift to last element of an index
        for i in stride(from: n-1, through: k, by: -1){
            arr.swapAt(0, i)
            // used heapify method to shift largest element to top element
            heapify(arr: &arr, n: i, i: 0)
        }
        
        //fetch the kth largest element in an array
        for i in k+1...arr.count - 1  {
            kLargestArr.append(arr[i])
        }
        return kLargestArr[0]
    }
   
}

var heapSort = HeapSort()
var arr = [6,4,3,12,5,7,8]
var kthlargestNumber = heapSort.heapSort(arr: &arr)
