//Solution goes in Sources

import Foundation

struct IsbnVerifier {
    static func isValid(_ input: String) -> Bool {
        
        let inputValue = input.filter({Set("0123456789X").contains($0)}).map({String($0)})
        guard inputValue.count == 10 else { return false }
        guard !inputValue[(0...8)].contains("X") else { return false }
        let sumAll = inputValue.enumerated().reduce(0) { (sum, arg) -> Int in
            let (idx, c) = arg
            let num = c == "X" ? 10 : Int(c)!
            return sum + num * (10 - idx)
        }
        return sumAll % 11 == 0
    }
}
