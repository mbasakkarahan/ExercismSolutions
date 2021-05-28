//Solution goes in Sources
class Raindrops {
    
    var sounds: String = ""
    func calculate(_ raindrop:Int) {
        if (raindrop % 3 == 0 ) {
            sounds = "\(sounds)Pling"
        }
        if (raindrop % 5 == 0 ) {
            sounds = "\(sounds)Plang"
        }
        if (raindrop % 7 == 0 ) {
            sounds = "\(sounds)Plong"
        }
        if (sounds.count == 0) {
             sounds = String(raindrop)
        }
    }
    init(_ raindrops:  Int) {
        calculate(raindrops)
    }
}
