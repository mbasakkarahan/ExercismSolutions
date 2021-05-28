extension Array {
    func accumulate<U>(_ operation: (Element) -> U) -> Array<U> {
        var collection = Array<U>()
        for i in self {
            collection.append(operation(i))
        }
        return collection
    }
}
