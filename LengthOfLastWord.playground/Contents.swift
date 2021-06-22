import UIKit

var str = "Hello, playground"

struct Words {

func lengthOfLastWord(str: String) -> Int {
    var count = 0
    let n = str.count
    var i = 0
    let characters = Array(str)
    
    while i<n {
        if characters[i] != " " {
            i = i+1
            count = count+1
        }
        else {
            while i<n && characters[i] == " " {
                i = i+1
                //check if space is encounetred in given string
                if i == n {
                    return count
                }
                else {
                    count = 0
                }
                
            }
        }
    }
    return count
 }
}

var words = Words()
words.lengthOfLastWord(str: str)
    

