struct CollatzConjecture {

    static func steps(_ num: Int) throws -> Int {
        guard num > 0 else {
            throw Errors.UnexpectedValue
        }
        
        var steps = 0
        var number = num
        
        while number > 1 {
            if number % 2 == 0 {
                number /= 2
            } else {
                number = number * 3 + 1
            }
            steps += 1
        }
        
        return steps
    }
}

enum Errors: Error {
    case UnexpectedValue
}
