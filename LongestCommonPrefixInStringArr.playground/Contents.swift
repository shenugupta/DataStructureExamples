import UIKit

var str = "Hello, playground"

struct LongestCommonPrefix {
    
    func getLongestCommonPrefixInGivenArray(arr: [String]) -> String {
        var lcp = arr[0]
        let lcpCharacters = Array(lcp)
        var currentWord = ""
        for i in 1...arr.count - 1 {
            currentWord = arr[i]
            let characters = Array(currentWord)
            var j = 0
          
            while j<currentWord.count && j < lcp.count && lcpCharacters[j] == characters[j] {
                j = j + 1
                
            }
            if j == 0 {
                return ""
            }
            lcp = String(characters[0..<j])
        }
       return lcp
  }
}

var longestSuffixPrefix = LongestCommonPrefix()
var prefixArr = ["flight","fly","flute"]
var longestCommonPrefixStr = longestSuffixPrefix.getLongestCommonPrefixInGivenArray(arr: prefixArr)
print(longestCommonPrefixStr)
