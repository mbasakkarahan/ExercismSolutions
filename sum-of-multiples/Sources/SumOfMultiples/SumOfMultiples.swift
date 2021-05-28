//Solution goes in Sources

func toLimit(_ lastValue: Int, inMultiples: [Int]) -> Int {
        var result = 0
        for i in 0..<lastValue {
            if inMultiples.contains(where: i.isMultiple) {
                result += i
            }
        }
        return result
}
