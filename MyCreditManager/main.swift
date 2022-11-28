//
//  main.swift
//  MyCreditManager
//
//  Created by JihoMac on 2022/11/15.
//

import Foundation

enum MenuType {
    case addStudent
    case deleteStudent
    case updateGrade
    case deleteGrade
    case checkGradeAverage
}

// MARK: Main
let schoolRecord = SchoolRecord()

main()

func main() {
    while 1 != 0 {
        
        print(Constants.selectMenuMessage)
        print(Constants.printMenuMessage)
        
        guard let menuInput: String = readLine()!.components(separatedBy: " ").first else { continue }
        
        switch menuInput {
        case "1":
            menuAction(menuInput: .addStudent)
        case "2":
            menuAction(menuInput: .deleteStudent)
        case "3":
            menuAction(menuInput: .updateGrade)
        case "4":
            menuAction(menuInput: .deleteGrade)
        case "5":
            menuAction(menuInput: .checkGradeAverage)
        case "x", "X":
            print(Constants.exitProgramMessage)
            break
        default:
            print(Constants.menuInputErrorMessage)
            continue
        }
        
    }
}

func menuAction(menuInput: MenuType) {
    switch menuInput {
        
    case .addStudent:
        print(Constants.addStudentInputMessage)
        
        guard let studentInput = readLine() else { return }
        
        if !studentInput.checkEnglish() {
            print(Constants.defaultInputErrorMessage)
            return
        }
        schoolRecord.addStudent(name: studentInput)
        
    case .deleteStudent:
        print(Constants.deleteStudentInputMessage)
        
        guard let studentInput = readLine() else { return }
        
        if !studentInput.checkEnglish() {
            print(Constants.defaultInputErrorMessage)
            return
        }
        schoolRecord.deleteStudent(name: studentInput)
        
    case .updateGrade:
        print(Constants.updateGradeInputMessage)
        print(Constants.updateGradeExampleMessage)
        print(Constants.updateGradeExplainMessage)
        
        guard let gradeInput = readLine() else { return }
        let info = gradeInput.components(separatedBy: " ")
        
        if info.count != 3 || !info[0].checkEnglish() || !info[1].checkEnglish() || !info[2].checkGrade() {
            print(Constants.defaultInputErrorMessage)
            return
        }
        
        let student = info[0]
        let subject = Subject(name: info[1], grade: info[2])
        schoolRecord.updateScore(name: student, subject: subject)
        
    case .deleteGrade:
        print(Constants.deleteGradeInputMessage)
        print(Constants.deleteGradeExplainMessage)
        
        guard let gradeInput = readLine() else { return }
        let info = gradeInput.components(separatedBy: " ")
        
        if info.count != 2 || !info[0].checkEnglish() || !info[1].checkEnglish() {
            print(Constants.defaultInputErrorMessage)
            return
        }
        
        let student = info[0]
        let subject = info[1]
        schoolRecord.deleteScore(name: student, subject: subject)
        
    case .checkGradeAverage:
        print(Constants.checkGrageAverageMessage)
        
        guard let studentInput = readLine() else { return }
        
        if !studentInput.checkEnglish() {
            print(Constants.defaultInputErrorMessage)
            return
        }
        schoolRecord.showAverageScore(name: studentInput)
    }
    
}
