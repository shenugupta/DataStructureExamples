import UIKit
import Foundation

var str = "Hello, playground"

struct RemoveDuplicatesinArray {
    var dictionary = [String:Int]()
    
  mutating  func removeDuplicatesinArray(arr: [String]) -> ([String],[String]) {
        var duplicatesArr : [String] = [String]()
        var uniqueArr : [String] = [String]()
        for index in 0...arr.count - 1 {
            if let key = dictionary[arr[index]] {
                duplicatesArr.append(arr[index])
            }
            else {
                uniqueArr.append(arr[index])
                dictionary[arr[index]] = 1
        }
    }

return (duplicatesArr,uniqueArr)
}
}

var removeDupArr = RemoveDuplicatesinArray()
removeDupArr.removeDuplicatesinArray(arr: ["Shenu","Aarvi","Pankaj","Shenu","Saanvi","Yakshita","Aarvi"])
