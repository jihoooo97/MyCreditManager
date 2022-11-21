//
//  main.swift
//  MyCreditManager
//
//  Created by JihoMac on 2022/11/15.
//

import Foundation

let schoolRecord = SchoolRecord()

while 1 != 0 {
    
    print("\n원하는 기능을 입력해주세요.")
    print("1: 학생추가, 2: 학생 삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    
    let input = readLine()!.components(separatedBy: " ").first!
    
    // 0 ~ 5
    if input.checkNumberValidate() {
        switch Int(input) {
        case 1:
            print("추가할 학생의 이름을 입력해주세요.")
            
            let input = readLine()!
            
            if !input.checkEnglish() {
                print("입력이 잘못되었습니다. 다시 확인해주세요.")
                continue
            }
            schoolRecord.addStudent(name: input)
            
        case 2:
            print("삭제할 학생의 이름을 입력해주세요.")
            
            let input = readLine()!
            
            if !input.checkEnglish() {
                print("입력이 잘못되었습니다. 다시 확인해주세요.")
                continue
            }
            schoolRecord.deleteStudent(name: input)
        
        case 3:
            print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
            print("입력 예) Mickey Swift A+")
            print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
            
            let input = readLine()!
            let info = input.components(separatedBy: " ")
            
            if info.count != 3 || !info[0].checkEnglish() || !info[1].checkEnglish() || !info[2].checkGrade() {
                print("입력이 잘못되었습니다. 다시 확인해주세요.")
                continue
            }
            
            let student = info[0]
            let subject = Subject(name: info[1], grade: info[2])
            schoolRecord.updateScore(name: student, subject: subject)
            
        case 4:
            print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
            print("입력 예) Mickey Swift")
            
            let input = readLine()!
            let info = input.components(separatedBy: " ")
            
            if info.count != 2 || !info[0].checkEnglish() || !info[1].checkEnglish() {
                print("입력이 잘못되었습니다. 다시 확인해주세요.")
                continue
            }
            
            let student = info[0]
            let subject = info[1]
            schoolRecord.deleteScore(name: student, subject: subject)
            
        case 5:
            print("평점을 알고싶은 학생의 이름을 입력해주세요.")
            
            let input = readLine()!
            
            if !input.checkEnglish() {
                print("입력이 잘못되었습니다. 다시 확인해주세요.")
                continue
            }
            schoolRecord.showAverageScore(name: input)
            
        default: break
        }
    }
    
    // X, x
    else if input.checkExit() {
        print("프로그램을 종료합니다..")
        break
    }
    
    // exception
    else {
        print("입력이 잘못되었습니다. 1~5의 숫자 또는 X를 입력해주세요.\n")
    }
    
}
