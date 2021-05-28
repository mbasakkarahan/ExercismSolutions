
import Foundation

let validChars = "abcçdefgğhıijklmnoöpqrsştuüvwxyzABCÇDEFGĞHIİJKLMNOÖPQRSŞTUÜVWXYZ1234567890"

class WordCount {
    var words: String
    
    init(words: String) {
        self.words = words
    }
    
    func count() -> [String: Int] {
        var result = [String: Int]()
        let piecesOfString = words.split(separator: " ")
        for pieces in piecesOfString {
            let lowerCasedWord = String(pieces.filter({ validChars.contains($0) })).lowercased()
            if lowerCasedWord.isEmpty {
                continue
            }
            
            if result[lowerCasedWord] == nil {
                result[lowerCasedWord] = 1
            } else {
                    result[lowerCasedWord]! += 1
            }
        }
        return result
    }
}
