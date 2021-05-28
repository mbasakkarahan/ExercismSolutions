struct Scrabble {
    var score: Int = 0
    init(_ scrabble: String?) {
        self.score = Scrabble.score(scrabble)
    }
    static func score(_ word: String?) -> Int {
        var score: Int = 0
        guard let word = word else { return score }
        for char in word.uppercased() {
            if char == "A" || char == "E" || char == "I" || char == "O" || char == "U" || char == "L" || char == "N" || char == "R" || char == "S" || char == "T" {
                score += 1
            } else if  char == "D" || char == "G" {
                score += 2
            } else if  char == "B" || char == "C" || char == "M" || char == "P"  {
                score += 3
            } else if  char == "F" || char == "H" || char == "V" || char == "W" || char == "Y" {
                score += 4
            } else if  char == "K" {
                score += 5
            } else if  char == "J" || char == "X" {
                score += 8
            } else if  char == "Q" || char == "Z" {
                score += 10
            } else {
                score += 0
            }
        }
        return score
    }
}
