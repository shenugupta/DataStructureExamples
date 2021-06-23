import UIKit
import Foundation

var str = "Hello, playground"

struct ValidPalindrome {

func validPalindromeOfString(inputString: String) -> Bool {
    
    let characters = Array(inputString)
    var s = 0
    var e = characters.count - 1
    
    while s <= e {
        // check for iterating from starting index if any special character symbol or space found in the given string and increment starting index
        while s < e && characters[s].isSymbol || characters[s].isPunctuation || characters[s].isMathSymbol || characters[s].isCurrencySymbol || characters[s] == " "  {
            s = s + 1
        }
        // check for iterating from end index if any special character symbol or space found in the given string and descrement end index
        while s < e && characters[e].isSymbol || characters[e].isPunctuation || characters[e].isMathSymbol ||  characters[e].isCurrencySymbol || characters[e] == " " {
            e = e - 1
        }
        // check for starting and ending index not same then return false
        if characters[s] != characters[e] {
            return false
        }
        // check for starting and ending index same then increment starting index and decrement end index
        else {
            s = s + 1
            e = e - 1
        }
    }
    return true
 }
}

let palindrome = ValidPalindrome()
let isValidPalidrome = palindrome.validPalindromeOfString(inputString: "m an ")
print(isValidPalidrome)
