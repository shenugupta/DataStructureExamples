import UIKit

var str = "Hello, playground"

public class Node {
    var value: String
    var next: Node?
    init(value: String, next: Node?) {
        self.value = value
        self.next = next
    }
}

public class LinkedList {
    fileprivate var head: Node?
    private var tail: Node?
    
    public var isEmpty: Bool {
        return  head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
    return tail
    }
    
    public func insert(value: String) {
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = Node(value: value, next: nil)
        
    }
    
    public func displayItems() {
        
        print("Displaying Linked List")
        var currnet = head
        while currnet?.next != nil {
            currnet = currnet?.next
            print("value\(currnet?.value ?? "")")
        }
    }
}

let sampleList = LinkedList()
sampleList.insert(value: "2")
sampleList.insert(value: "4")



