//Solution goes in Sources

class Year {
    var isLeapYear: Bool
    var calendarYear: Int
    
    
    init(calendarYear: Int) {
        self.calendarYear = calendarYear
    
        if  calendarYear % 400 == 0 || (calendarYear % 100 != 0 && calendarYear % 4 == 0) {
            self.isLeapYear = true
        }else {
            self.isLeapYear = false
        }
    }
}
