struct GradeSchool {
    var roster = [Int:[String]] ()

    mutating func addStudent(_ name: String, grade: Int) -> Void {
        var students = roster[grade] ?? []
        students.append(name)
        roster.updateValue(students, forKey: grade)
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        roster[grade] ?? []
    }
    
    var sortedRoster: [Int:[String]] {
        var sortedRoster = [Int:[String]] ()
        for (grade, students) in roster {
            sortedRoster[grade] = students.sorted()
        }
        return sortedRoster
    }
}
