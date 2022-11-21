//
//  Student.swift
//  MyCreditManager
//
//  Created by JihoMac on 2022/11/15.
//

import Cocoa

class Student {

    var name: String
    var subjectList: [Subject]
    
    init(name: String) {
        self.name = name
        self.subjectList = []
    }
    
    func updateSubject(subject: Subject) {
        // 과목이 있으면 해당 과목 성적만 갱신
        if subjectList.contains(where: { $0.name == subject.name }) {
            if let index = subjectList.firstIndex(where: { $0.name == subject.name }) {
                subjectList[index].grade = subject.grade
            }
        }
        // 과목이 없으면 과목 리스트에 추가
        else {
            subjectList.append(subject)
        }
    }
    
    func deleteSubject(subject: String) {
        // 과목이 있으면 해당 과목 성적만 갱신
        if subjectList.contains(where: { $0.name == subject }) {
            if let index = subjectList.firstIndex(where: { $0.name == subject }) {
                subjectList.remove(at: index)
            }
        }
        // 과목이 없으면 오류 메세지 출력
        else {
            print("\(self.name)학생의 \(subject)과목이 없습니다.")
        }
    }
    
    func getAverage() -> Float {
        var gradeSum: Float = 0
        
        for subject in subjectList {
            gradeSum += subject.convertScore()
        }
        
        return gradeSum / Float(subjectList.count)
    }
    
}
