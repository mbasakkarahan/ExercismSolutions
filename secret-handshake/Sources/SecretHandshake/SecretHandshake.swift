enum Command: String {
    case wink
    case doubleBlink = "double blink"
    case closeYourEyes = "close your eyes"
    case jump
}

struct SecretHandshake {
    let number: UInt
    init(_ number: UInt) {
        self.number = number
    }
    var commands: [String] {
        var number = self.number
        var commanResult: [Command] = []
        if number % 2 == 1 { commanResult.append(.wink) }
        number /= 2
        if number % 2 == 1 { commanResult.append(.doubleBlink) }
        number /= 2
        if number % 2 == 1 { commanResult.append(.closeYourEyes) }
        number /= 2
        if number % 2 == 1 { commanResult.append(.jump) }
        number /= 2
        if number % 2 == 1 { commanResult.reverse() }
        return commanResult.map { $0.rawValue }
    }
}
