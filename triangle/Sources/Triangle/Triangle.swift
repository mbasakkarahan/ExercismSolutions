class Triangle {
    var kind: String = ""

    init(_ a: Double,_ b: Double,_ c: Double) {
        if a <= 0.0 ||  b <= 0.0 || c <= 0.0 {
            self.kind = "ErrorKind"
            return
        }
        if a == b && a == c {
            self.kind = "Equilateral"
        }
        if a != b && a == c {
            if b < a + c {
                self.kind = "Isosceles"
            } else {
                self.kind = "ErrorKind"
            }
        }
        if a != c && a == b {
            if c < a + b {
                self.kind = "Isosceles"
            } else {
                self.kind = "ErrorKind"
            }
        }
        if a != b && b == c {
            if a < b + c {
                self.kind = "Isosceles"
            } else {
                self.kind = "ErrorKind"
            }
        }
        if a != b && a != c && c != b{
            
            let halfSum = (a + b + c)/2
            
            if a > halfSum || b > halfSum || c > halfSum {
                self.kind = "ErrorKind"
                return
            }
            self.kind = "Scalene"
        }
    }
}
