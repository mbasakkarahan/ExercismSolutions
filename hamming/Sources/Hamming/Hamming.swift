struct Hamming {
    
    static func compute(_ dnaStrand: String, against: String) -> Int? {
        if (dnaStrand.count != against.count) {
            return nil
        }
        return dnaStrand.indices.reduce(0) {
            if dnaStrand[$1] == against[$1] {
                return $0
            } else {
                return $0! + 1
            }
        }
    }
}
