import Foundation

struct Clock  {
    var description: String
    var hours = 0
    var minutes = 0
    init(hours: Int = 0, minutes: Int = 0) {
        var h = (hours + minutes / 60) % 24
        var m = minutes % 60
        if m < 0 {
            m += 60
            h -= 1
        }
        if h < 0 { h += 24 }
        self.hours = h
        self.minutes = m
        self.description = String(format: "%02d:%02d", h, m)
    }
}
extension Clock: Equatable, CustomStringConvertible {
    func add(minutes: Int)->Clock {
        return Clock(hours: self.hours, minutes: self.minutes + minutes)
    }
    
    func subtract(minutes: Int)->Clock {
        return Clock(hours: self.hours, minutes: self.minutes - minutes)
    }
}
