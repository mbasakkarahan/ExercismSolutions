//Solution goes in Sources

class Squares {
    var lastNum: Int
    
    init (_ lastNum: Int) {
        self.lastNum = lastNum
    }
    
    var squareOfSum: Int {
            var result = 0
        for i in 1 ... self.lastNum {
            result += i
        }
            return result * result
    }
    
    var sumOfSquares: Int {
            var result = 0
            for i in 1 ... self.lastNum {
                result += i * i
            }
            return result
    }
    
    var differenceOfSquares: Int {
            return squareOfSum - sumOfSquares
        
    }
}
