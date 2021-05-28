//Solution goes in Sources
import Foundation

class Grains {
    static var total: UInt64 = UInt64.max
    
    enum GrainsError: Error {
        case inputTooHigh(errorMessage: String)
        case inputTooLow(errorMessage: String)
    }
    
 static func square(_ n: Int) throws -> UInt64 {
        guard  n < 65 else {
            throw GrainsError.inputTooHigh(errorMessage: "Input[\(n)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        guard  n > 0  else {
            throw GrainsError.inputTooLow(errorMessage: "Input[\(n)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        return UInt64(1) << UInt64(n-1)
    }
}
