enum NumberClass {
    case perfect
    case abundant
    case deficient
}

struct NumberClassifier {
    var classification: NumberClass = .perfect
    init (number: Int) {
        let newNumber = number / 2
        let elements = (1...newNumber).filter { return number % $0 == 0 }
        let sum = elements.reduce(0, +)
        switch sum {
        case _ where sum == number:
            classification = .perfect
        case _ where sum > number:
            classification = .abundant
        case _ where sum < number:
            classification = .deficient
        default:
            break
        }
    }
}
