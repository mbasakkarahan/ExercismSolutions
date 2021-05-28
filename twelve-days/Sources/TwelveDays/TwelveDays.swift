class TwelveDaysSong {
    
    private static let days = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
    
    private static let gifts = [
        "a Partridge in a Pear Tree", "two Turtle Doves", "three French Hens",
        "four Calling Birds", "five Gold Rings", "six Geese-a-Laying",
        "seven Swans-a-Swimming", "eight Maids-a-Milking", "nine Ladies Dancing",
        "ten Lords-a-Leaping", "eleven Pipers Piping", "twelve Drummers Drumming"]
    
    private class func listGifts(_ v:Int) -> String {
        switch v {
        case 1:
            return gifts[0]
        default:
            return (2...v).reversed().map { (i) -> String in
                gifts[i - 1]
                }.joined(separator: ", ") + ", and \(gifts[0])"
        }
    }

    class func verse(_ v:Int) -> String {
        guard v >= 1 && v <= 12 else {
            return ""
        }
        return "On the \(days[v - 1]) day of Christmas my true love gave to me: \(listGifts(v))."
    }

    class func verses(_ from:Int, _ to:Int) -> String {
        guard from >= 1 && to <= 12 && from <= to else {
            return ""
        }
        return (from...to).map { (v) -> String in
            verse(v)
        }.joined(separator: "\n")
    }

    class func sing() -> String {
        return verses(1, 12)
    }
}
