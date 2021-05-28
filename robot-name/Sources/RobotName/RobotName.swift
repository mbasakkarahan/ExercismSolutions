//Solution goes in Sources
struct Robot {
    var name = String()
    let engChars: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    init() {
        self.name = nameComposer()
    }
    func nameComposer() -> String {
        let firstChar = engChars.randomElement()!
        let secondChar = engChars.randomElement()!
        let numArray = Array(0...9)
        let firstNumb = numArray.randomElement()!
        let secondNumb = numArray.randomElement()!
        let thirdNumb = numArray.randomElement()!
        return "\(firstChar)\(secondChar)\(firstNumb)\(secondNumb)\(thirdNumb)"
    }
    mutating func resetName() {
        self.name = nameComposer()
    }
}
