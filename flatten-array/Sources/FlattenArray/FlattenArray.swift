//Solution goes in Sources

func flattenArray<G>(_ input: [Any?]) -> [G] {
    var value: [G] = [G]()
    for i in input {
        if let temp = i as? [Any?] {
            value += flattenArray(temp)
        } else if let temp = i as? G {
            value.append(temp)
        }
    }
    return value
}
