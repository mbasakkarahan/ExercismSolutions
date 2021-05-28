import Foundation

class Prime {
    
    static func nth(_ num: Int) -> Int? {
        
        if num <= 0 { return nil }
        
        var primeArray: [Int] = [2]
        var nextVal = 3
    
        while primeArray.count < num {
            var isPrime = true
            var divide = 2
            while divide <= Int(sqrt(Double(nextVal))) {
                if nextVal % divide == 0 {
                    isPrime = false
                    break
                }
                divide += 1
            }
            if isPrime {
                primeArray.append(nextVal)
            }
            nextVal += 2
        }
        return primeArray.last
    }
}
