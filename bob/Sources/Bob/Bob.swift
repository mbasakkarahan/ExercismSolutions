//Solution goes in Sources

import Foundation
func hey(_ input: String) -> String{
    var bobsAnswer = ""
   let newInput = input.trimmingCharacters(in: .whitespacesAndNewlines)

    if newInput.count == 0{
        bobsAnswer = "Fine. Be that way!"
    }else if input == input.uppercased() && input != input.lowercased() {
        bobsAnswer = "Whoa, chill out!"
    }else if newInput.last == "?" {
        bobsAnswer = "Sure."
    }else{
        bobsAnswer = "Whatever."
    }
    
    return bobsAnswer
}
