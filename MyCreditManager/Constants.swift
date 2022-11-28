//
//  Constants.swift
//  MyCreditManager
//
//  Created by JihoMac on 2022/11/28.
//

import Cocoa

enum Constants {

    // MARK: Menu
    static let selectMenuMessage = "\n원하는 기능을 입력해주세요."
    static let printMenuMessage = "1: 학생추가, 2: 학생 삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료"

    // MARK: Input Error
    static let defaultInputErrorMessage = "입력이 잘못되었습니다. 다시 확인해주세요."
    static let menuInputErrorMessage = "입력이 잘못되었습니다. 1~5의 숫자 또는 X를 입력해주세요.\n"
    
    // MARK: Add Student
    static let addStudentInputMessage = "추가할 학생의 이름을 입력해주세요."
    
    // MARK: Delete Student
    static let deleteStudentInputMessage = "삭제할 학생의 이름을 입력해주세요."
    
    // MARK: Update Grade
    static let updateGradeInputMessage = "성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요."
    static let updateGradeExampleMessage = "입력 예) Mickey Swift A+"
    static let updateGradeExplainMessage = "만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다."
    
    // MARK: Delete Grade
    static let deleteGradeInputMessage = "성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요."
    static let deleteGradeExplainMessage = "입력 예) Mickey Swift"
    
    // MARK: Check Grade Average
    static let checkGrageAverageMessage = "평점을 알고싶은 학생의 이름을 입력해주세요."
    
    // MARK: Exit
    static let exitProgramMessage = "프로그램을 종료합니다.."
    
    
    
}
