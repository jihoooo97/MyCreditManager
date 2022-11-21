//
//  Subject.swift
//  MyCreditManager
//
//  Created by JihoMac on 2022/11/15.
//

import Cocoa

class Subject {

    var name: String
    var grade: String
    
    init(name: String, grade: String) {
        self.name = name
        self.grade = grade
    }
    
    func convertScore() -> Float {
        switch self.grade {
        case "A+": return 4.5
        case "A": return 4
        case "B+": return 3.5
        case "B": return 3
        case "C+": return 2.5
        case "C": return 2
        case "D+": return 1.5
        case "D": return 1
        default: return 0
        }
    }
    
}
