class Matrix {
    var rows: [[Int]] = []
    var columns: [[Int]] = []

    init(_ input: String) {
        self.rows = input.split(separator: "\n").map{$0.split(separator: " ").map{Int($0)!}}

        for j in 0..<rows[0].count {
            var column: [Int] = []

            for i in 0..<rows.count {
                column.append(rows[i][j])
            }
            self.columns.append(column)
        }
    }
}
