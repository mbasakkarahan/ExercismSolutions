extension Array where Element == String {
    func recite() -> String {
        var phrases: [String] = []

        for i in 0..<self.count {
            let firstItem = self[i]

            if self.indices.contains(i+1) {
                let secondItem = self[i+1]
                phrases.append("For want of a \(firstItem) the \(secondItem) was lost.")
            } else {
                phrases.append("And all for the want of a \(self[0]).")
            }
        }
        
        return phrases.joined(separator: "\n")
    }
}
