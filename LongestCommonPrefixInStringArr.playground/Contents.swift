import UIKit

var str = "Hello, playground"

struct LongestCommonPrefix {
    
    func getLongestCommonPrefixInGivenArray(arr: [String]) -> String {
        var lcp = arr[0]
        // get the first element of array
        let lcpCharacters = Array(lcp)
        var currentWord = ""
        // iterate over starting second element to end of the element in the array
        for i in 1...arr.count - 1 {
            // get the current word in the array
            currentWord = arr[i]
            let characters = Array(currentWord)
            var j = 0
          // check for the j index and its length should be less than to current word lenghth and lcp length and check if sequence of characters matching to current word array in the string
            while j<currentWord.count && j < lcp.count && lcpCharacters[j] == characters[j] {
                j = j + 1
            }
            // if no character matching in current word and lcp word then return 0
            if j == 0 {
                return ""
            }
            // extract substring that matching characters from lcp word and current word in the array and return this string
            lcp = String(characters[0..<j])
        }
       return lcp
  }
}

var longestSuffixPrefix = LongestCommonPrefix()
var prefixArr = ["flight","fly","flute"]
var longestCommonPrefixStr = longestSuffixPrefix.getLongestCommonPrefixInGivenArray(arr: prefixArr)
print(longestCommonPrefixStr)
