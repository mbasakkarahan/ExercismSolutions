class DNA {
    var strand: String
    var nucleotideCounts = ["T": 0, "A": 0, "C": 0, "G": 0]
    
    init?(strand: String) {
        self.strand = strand
        let validStrand = strand.allSatisfy({ char in
            nucleotideCounts.keys.contains(String(char))
        })
        guard validStrand else  { return nil }
    }

    func count(_ nucleotide: Character) -> Int {
        return strand.reduce(0, {sum, char in
            if char == nucleotide {
                return sum + 1
            } else {
                return sum
            }
        })
    }
    func counts() -> [String: Int] {
        let nucletiotides = Set(strand)
        
        nucletiotides.forEach({ nucleotide in
            nucleotideCounts[String(nucleotide)] = count(nucleotide)
        })
        
        return nucleotideCounts
    }
}
