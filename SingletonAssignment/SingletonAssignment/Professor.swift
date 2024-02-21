//
//  Professor.swift
//  SingletonAssignment
//
//  Created by Yashasvi Sharma  on 21/02/24.
//

import Foundation

struct Professor {
    var name: String
    var professorID: String
    var subject: String
    
    func updateStudentGrade(studentID: String, newGrade: String) {
        College.shared.updateStudentGrade(studentID: studentID, grade: newGrade)
    }
}
