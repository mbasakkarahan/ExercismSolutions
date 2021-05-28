//Solution goes in Sources

import Foundation

func isIsogram(_ word: String) -> Bool {
    var charsArr:[Character] = []
    let lowerCasedAndTrimmedWord = word.components(separatedBy: " ").joined().lowercased()
    let finalWord = lowerCasedAndTrimmedWord.components(separatedBy: "-").joined()
    
    for i in finalWord {
        if charsArr.contains(i){
            return false
        }
        charsArr.append(i)
    }
    return true
}
