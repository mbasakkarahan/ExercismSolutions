enum CharsString {
    static let engChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
}
var template = ""

func makeDiamond(letter: Character) -> [String] {
    template = ""
    var diamond: [String] = []
    for char in CharsString.engChars where char <= letter {
        template.append(char)
    }
    let reversedTemplate = template + template.filter{$0 != letter}.reversed()
    template = template.filter{$0 != "A"}.reversed() + template
    for char in reversedTemplate {
        let line = template.map{ $0 == char ? $0 : " " }
        diamond.append(String(line))
    }
    return diamond
}
