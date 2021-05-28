import Foundation
func isPangram(_ input:String) -> Bool {
    
    let lowercased = input.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var result = true
    
    for a in alphabet {
        guard lowercased.contains(a) else {
            result = false
            return result
        }
    }
    return result
}
