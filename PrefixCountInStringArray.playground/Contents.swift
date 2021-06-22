import UIKit
import Foundation

var str = "Hello, playground"

struct PrefixGivenArrayCount {

func prefixCountinGivenArray(inputArr: [String], queryArr: [String]) -> [Int] {
    var countArray = [Int]()
    var count = 0
    for queryStr in queryArr {
        for inputStr in inputArr {
            if inputStr.hasPrefix(queryStr){
                count = count + 1
                
            }
        }
        countArray.append(count)
        count = 0
    }
    return countArray
    
}
}

let prefixGivenArr = PrefixGivenArrayCount()
var inputArray = [String]()
inputArray.append("Shenu")
inputArray.append("Pankaj")
inputArray.append("Aarvi")
inputArray.append("Sh")
inputArray.append("Pank")
inputArray.append("Aaa")
inputArray.append("Shenam")
inputArray.append("Panky")

if let min = inputArray.min(by: {$0.count < $1.count}) {
    print(min)
}

var queryArray = [String]()
queryArray.append("She")
queryArray.append("Pan")
queryArray.append("Aar")


var countPrefixArr = prefixGivenArr.prefixCountinGivenArray(inputArr:inputArray,queryArr: queryArray)
