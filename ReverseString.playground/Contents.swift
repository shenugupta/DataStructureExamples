import UIKit

var str = "Hello, playground"


import Foundation

struct ReverseString {
    func reverseString1(str: String, begin:inout Int, end: inout Int) -> String  {
        var characters = Array(str)
        var endPos = end
        if begin > 0 {
            endPos = endPos + 1
        }
        var mySubstringChar = characters[begin..<endPos]
       
        while begin < endPos {
            mySubstringChar.swapAt(begin, endPos - 1)
            begin = begin + 1
            endPos = endPos - 1
        }
        return String(mySubstringChar)
    }
    
    func reverseWords(inputString: String) -> [String] {
        var reverseArr: [String] = [String]()
        var begin = 0
        var end = 0
        let characters = Array(inputString)
        var reverseWord: String = ""
        while end < characters.count - 1 {
            if characters[end] == " " {
                //reverse the work before encountered space in given string
                reverseWord =  self.reverseString1(str: inputString, begin: &begin, end: &end )
                reverseArr.append(reverseWord)
                end = end + 1
                begin = end
            }
            else {
                 end = end + 1
            }
        }
        //reverse last string in the given string
        reverseWord =  self.reverseString1(str: inputString, begin: &begin, end: &end)
        reverseArr.append(reverseWord)
        
        // append each reverse word of given string in array
        return reverseArr
    }
}
let reversString = ReverseString()
let reverseWordsInString = reversString.reverseWords(inputString: "Hello World")
print(reverseWordsInString)
var finalReverseString = ""
for item in reverseWordsInString.reversed() {
    finalReverseString = finalReverseString +  " " + item
    print("Found \(item)")
}

print("Found \(finalReverseString)")
