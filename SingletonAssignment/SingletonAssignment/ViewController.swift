//
//  ViewController.swift
//  SingletonAssignment
//
//  Created by Yashasvi Sharma  on 21/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var college = College.shared
        college.addStudent(student: Student(name: "Yash", studentID: "1", branch: "EEE", year: 2020, grade: "A"))
        college.addStudent(student: Student(name: "Ravi", studentID: "2", branch: "CSE", year: 2021, grade: "B"))
        college.addStudent(student: Student(name: "Yash", studentID: "3", branch: "CVE", year: 2022, grade: "A"))
        college.addStudent(student: Student(name: "Yash", studentID: "4", branch: "EE", year: 2019, grade: "C"))
        college.addStudent(student: Student(name: "Yash", studentID: "5", branch: "ME", year: 2018, grade: "B"))
        
        college.addProfessor(professor: Professor(name: "Ajay", professorID: "12", subject: "Physics"))
        college.addProfessor(professor: Professor(name: "Atul", professorID: "24", subject: "Biology"))
        college.addProfessor(professor: Professor(name: "Kapil", professorID: "12", subject: "Chemistry"))
        college.addProfessor(professor: Professor(name: "Tarun", professorID: "13", subject: "English"))
        college.addProfessor(professor: Professor(name: "Lalil", professorID: "15", subject: "History"))
        
        college.professors[0].updateStudentGrade(studentID: "1", newGrade: "C")
        college.printStudentDetails()
    }


}

