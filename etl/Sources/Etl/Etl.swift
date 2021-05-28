//Solution goes in Sources
class ETL {
    static func transform(_ dict: [Int : [String]]) -> [String : Int] {
        var etlDict: [String : Int] = [:]
        for item in dict {
            for value in item.value {
                etlDict[value.lowercased()] = item.key
            }
        }
        return etlDict
    }
}
