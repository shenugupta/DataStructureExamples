import UIKit

var str = "Hello, playground"

struct MinHeap {
    var items: [Int] = []
    
    // get Index
    
    private func getLeftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    
    private func getRightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
    
    private func getParentIndex(_ childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }
    
    // Boolean Check
    
    private func hasLeftChild(_ index: Int) -> Bool {
        return getLeftChildIndex(index) < items.count
    }
    
    private func hasRightChild(_ index: Int) -> Bool {
        return getRightChildIndex(index) < items.count
    }
    
    private func hasParent(_ index: Int) -> Bool {
        return getParentIndex(index) >= 0
    }
    
    // return item from heap
    
    private func leftChild(_ index: Int) -> Int {
        return items[getLeftChildIndex(index)]
    }
    
    private func rightChild(_ index: Int) -> Int {
        return items[getRightChildIndex(index)]
    }
    
    private func parent(_ index: Int) -> Int {
        return items[getParentIndex(index)]
    }
    
    public func peek() -> Int {
        if items.count != 0 {
            return items[0]
        }
        else{
            fatalError()
        }
    }
    
//    mutating public func poll() -> Int {
//        if items.count != 0 {
//            let item = items[0]
//            items[0] = items[items.count - 1]
//            return items[0]
//        }
//    }
    
    mutating private func heapifyDown() {
        var index = 0
        while hasLeftChild(index) {
         var smallestIndex = getLeftChildIndex(index)
            
            if hasRightChild(index) && rightChild(index) < leftChild(index) {
                smallestIndex = getRightChildIndex(index)
            }
            
            if items[index] < items[smallestIndex] {
                break
            }
            else {
                
            }
        }
    }
    
}


