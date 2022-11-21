//
//  SchoolRecord.swift
//  MyCreditManager
//
//  Created by JihoMac on 2022/11/15.
//

import Cocoa

class SchoolRecord {

    var studentList: [Student]
    
    init() {
        studentList = []
    }
    
    func addStudent(name: String) {
        // 리스트에 학생이 존재
        if studentList.contains(where: { $0.name == name }) {
            print(name + " 은/는 이미 존재하는 학생입니다. 추가하지 않습니다.")
        }
        // 리스트에 학생이 존재하지 않음
        else {
            studentList.append(Student(name: name))
            print(name + " 학생을 추가했습니다.")
        }
    }

    func deleteStudent(name: String) {
        // 리스트에 학생이 존재
        if studentList.contains(where: { $0.name == name }) {
            if let index = studentList.firstIndex(where: { $0.name == name }) {
                studentList.remove(at: index)
                print(name + " 학생을 삭제했습니다.")
            }
        }
        // 리스트에 학생이 존재하지 않음
        else {
            print("\(name) 학생을 찾을 수 없습니다.")
        }
    }

    func updateScore(name: String, subject: Subject) {
        // 리스트에 학생이 존재
        if studentList.contains(where: { $0.name == name }) {
            if let index = studentList.firstIndex(where: { $0.name == name }) {
                studentList[index].updateSubject(subject: subject)
                print("\(name) 학생의 \(subject.name) 과목이 \(subject.grade)로 추가(변경)되었습니다.")
            }
        }
        // 리스트에 학생이 존재하지 않음
        else {
            print("\(name) 학생을 찾을 수 없습니다.")
        }
    }

    func deleteScore(name: String, subject: String) {
        // 리스트에 학생이 존재
        if studentList.contains(where: { $0.name == name }) {
            if let index = studentList.firstIndex(where: { $0.name == name }) {
                studentList[index].deleteSubject(subject: subject)
                print("\(name) 학생의 \(subject) 과목의 성적이 삭제되었습니다.")
            }
        }
        // 리스트에 학생이 존재하지 않음
        else {
            print("\(name) 학생을 찾을 수 없습니다.")
        }
    }

    func showAverageScore(name: String) {
        // 리스트에 학생이 존재
        if studentList.contains(where: { $0.name == name }) {
            if let index = studentList.firstIndex(where: { $0.name == name }) {
                let student = studentList[index]
                print(student.name)
                
                student.subjectList.forEach {
                    print("\($0.name): \($0.grade)")
                }
                
                print("평점 : \(student.getAverage())")
            }
        }
        // 리스트에 학생이 존재하지 않음
        else {
            print("\(name) 학생을 찾을 수 없습니다.")
        }
    }
    
}
