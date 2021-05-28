//Solution goes in Sources
import Foundation

class Anagram {
    var word: String = ""
    init(word: String) {
        self.word = word.lowercased()
    }
    func sorted(word: String) -> String {
        let lowerCasedChars = word.lowercased().map({String($0)})
        let sortedAndJoinedString = lowerCasedChars.sorted().joined(separator: "")
        return sortedAndJoinedString
    }
    func match(_ words: [String]) -> [String] {
        let word = self.sorted(word: self.word)
        let isAnagram = words.filter({self.sorted(word: $0) == word && $0.lowercased() != self.word})
        return isAnagram
    }
    
}
