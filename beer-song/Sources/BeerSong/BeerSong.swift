//Solution goes in Sources
import Foundation

class BeerSong {
    
    var numberOfBeerBottles: Int
    init(numberOfBeerBottles: Int) {
        self.numberOfBeerBottles = numberOfBeerBottles
    }
    func generateVersesOfBeerSong() -> String {
        var songArray = [""]
        for i in stride(from: 0, through: numberOfBeerBottles, by: 1){
            if i == 0 {
                songArray.append("No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.")
            }else {
                songArray.append("\(i) bottle\(i > 1 ? "s" : "") of beer on the wall, \(i) bottle\(i > 1 ? "s" : "") of beer.\nTake one down and pass it around, \(i > 1 ? String(i - 1) : "no more") bottle\(i > 2 || (i - 1) == 0 ? "s" : "") of beer on the wall.\n\n")
            }
        }
        
        songArray.reverse()
        let joinedSongArray = songArray.joined(separator: "")
        return joinedSongArray
    }
    
    
    
}
