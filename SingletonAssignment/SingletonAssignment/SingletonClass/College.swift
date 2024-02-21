//
//  College.swift
//  SingletonAssignment
//
//  Created by Yashasvi Sharma  on 21/02/24.
//

import Foundation

struct College {
    static var shared = College()
    
    private init() {}
    var students: [Student] = []
    var professors: [Professor] = []
    
    mutating func addStudent(student: Student) {
        students.append(student)
    }
    
    mutating func addProfessor(professor: Professor) {
        professors.append(professor)
    }
    
    
    mutating func updateStudentGrade(studentID: String, grade: String) {
        print("Inside updateStudentGrade")
        if let index = students.firstIndex(where: { $0.studentID == studentID }) {
            print("Inside condition")
            var updatedStudent = students[index]
            updatedStudent.grade = grade
            students[index] = updatedStudent
        }
    }
    
    func printStudentDetails() {
        print("Student list is: ")
        for student in students {
            print(student)
        }
    }
    
}
