//Solution goes in Sources
class Sieve {
    var primes: [Int] = [Int]()
    init(_ lastValue: Int) {
        var primes = [2]
        var checkingArray: [Int] = [Int]()

        for i in 3 ... lastValue where i % 2 != 0 {
            if !checkingArray.contains(i) {
                primes.append(i)

                var factor = 2 * i
                while factor <= lastValue {
                    checkingArray.append(factor)
                    factor += i
                }
            }
        }
        self.primes = primes
    }
}
